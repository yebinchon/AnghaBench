
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef int uint8_t ;
struct TYPE_19__ {unsigned int num_key_ids; unsigned int data_size; struct TYPE_19__* next; int * data; int ** key_ids; int * system_id; } ;
struct TYPE_18__ {scalar_t__ eof_reached; } ;
struct TYPE_17__ {TYPE_11__* fc; } ;
struct TYPE_16__ {int nb_streams; int ** streams; } ;
typedef TYPE_1__ MOVContext ;
typedef int MOVAtom ;
typedef int AVStream ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVEncryptionInitInfo ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_ENCRYPTION_INIT_INFO ;
 int ENOMEM ;
 int FFMAX (unsigned int,int) ;
 unsigned int FFMIN (int ,unsigned int) ;
 int INT_MAX ;
 int * av_encryption_init_info_add_side_data (TYPE_3__*,size_t*) ;
 TYPE_3__* av_encryption_init_info_alloc (int,int ,int,int ) ;
 int av_encryption_init_info_free (TYPE_3__*) ;
 TYPE_3__* av_encryption_init_info_get_side_data (int *,int) ;
 int ** av_fast_realloc (int **,unsigned int*,unsigned int) ;
 int av_free (int *) ;
 int av_freep (int **) ;
 int av_log (TYPE_11__*,int ,char*) ;
 int * av_mallocz (int) ;
 int av_stream_add_side_data (int *,int ,int *,size_t) ;
 int * av_stream_get_side_data (int *,int ,int*) ;
 unsigned int avio_r8 (TYPE_2__*) ;
 int avio_rb24 (TYPE_2__*) ;
 unsigned int avio_rb32 (TYPE_2__*) ;
 int avio_read (TYPE_2__*,int *,int) ;
 int mov_try_read_block (TYPE_2__*,unsigned int,int **) ;

__attribute__((used)) static int mov_read_pssh(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVEncryptionInitInfo *info, *old_init_info;
    uint8_t **key_ids;
    AVStream *st;
    uint8_t *side_data, *extra_data, *old_side_data;
    size_t side_data_size;
    int ret = 0, old_side_data_size;
    unsigned int version, kid_count, extra_data_size, alloc_size = 0;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    version = avio_r8(pb);
    avio_rb24(pb);

    info = av_encryption_init_info_alloc( 16, 0,
                                                           16, 0);
    if (!info)
        return AVERROR(ENOMEM);

    if (avio_read(pb, info->system_id, 16) != 16) {
        av_log(c->fc, AV_LOG_ERROR, "Failed to read the system id\n");
        ret = AVERROR_INVALIDDATA;
        goto finish;
    }

    if (version > 0) {
        kid_count = avio_rb32(pb);
        if (kid_count >= INT_MAX / sizeof(*key_ids))
            return AVERROR(ENOMEM);

        for (unsigned int i = 0; i < kid_count && !pb->eof_reached; i++) {
            unsigned int min_kid_count = FFMIN(FFMAX(i + 1, 1024), kid_count);
            key_ids = av_fast_realloc(info->key_ids, &alloc_size,
                                      min_kid_count * sizeof(*key_ids));
            if (!key_ids) {
                ret = AVERROR(ENOMEM);
                goto finish;
            }
            info->key_ids = key_ids;

            info->key_ids[i] = av_mallocz(16);
            if (!info->key_ids[i]) {
                ret = AVERROR(ENOMEM);
                goto finish;
            }
            info->num_key_ids = i + 1;

            if (avio_read(pb, info->key_ids[i], 16) != 16) {
                av_log(c->fc, AV_LOG_ERROR, "Failed to read the key id\n");
                ret = AVERROR_INVALIDDATA;
                goto finish;
            }
        }

        if (pb->eof_reached) {
            av_log(c->fc, AV_LOG_ERROR, "Hit EOF while reading pssh\n");
            ret = AVERROR_INVALIDDATA;
            goto finish;
        }
    }

    extra_data_size = avio_rb32(pb);
    ret = mov_try_read_block(pb, extra_data_size, &extra_data);
    if (ret < 0)
        goto finish;

    av_freep(&info->data);
    info->data = extra_data;
    info->data_size = extra_data_size;


    old_side_data = av_stream_get_side_data(st, AV_PKT_DATA_ENCRYPTION_INIT_INFO, &old_side_data_size);
    if (old_side_data) {
        old_init_info = av_encryption_init_info_get_side_data(old_side_data, old_side_data_size);
        if (old_init_info) {

            for (AVEncryptionInitInfo *cur = old_init_info;; cur = cur->next) {
                if (!cur->next) {
                    cur->next = info;
                    break;
                }
            }
            info = old_init_info;
        } else {

            ret = AVERROR(ENOMEM);
            goto finish;
        }
    }

    side_data = av_encryption_init_info_add_side_data(info, &side_data_size);
    if (!side_data) {
        ret = AVERROR(ENOMEM);
        goto finish;
    }
    ret = av_stream_add_side_data(st, AV_PKT_DATA_ENCRYPTION_INIT_INFO,
                                  side_data, side_data_size);
    if (ret < 0)
        av_free(side_data);

finish:
    av_encryption_init_info_free(info);
    return ret;
}
