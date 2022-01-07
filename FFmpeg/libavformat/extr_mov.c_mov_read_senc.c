
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ eof_reached; } ;
struct TYPE_14__ {int fc; } ;
struct TYPE_13__ {int nb_encrypted_samples; int ** encrypted_samples; } ;
typedef int MOVStreamContext ;
typedef TYPE_1__ MOVEncryptionIndex ;
typedef TYPE_2__ MOVContext ;
typedef int MOVAtom ;
typedef TYPE_3__ AVIOContext ;
typedef int AVEncryptionInfo ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FFMAX (unsigned int,int) ;
 unsigned int FFMIN (int ,unsigned int) ;
 int INT_MAX ;
 int av_encryption_info_free (int *) ;
 int ** av_fast_realloc (int **,unsigned int*,unsigned int) ;
 int av_freep (int ***) ;
 int av_log (int ,int ,char*) ;
 int avio_r8 (TYPE_3__*) ;
 int avio_rb24 (TYPE_3__*) ;
 unsigned int avio_rb32 (TYPE_3__*) ;
 int get_current_encryption_info (TYPE_2__*,TYPE_1__**,int **) ;
 int mov_read_sample_encryption_info (TYPE_2__*,TYPE_3__*,int *,int **,int) ;

__attribute__((used)) static int mov_read_senc(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVEncryptionInfo **encrypted_samples;
    MOVEncryptionIndex *encryption_index;
    MOVStreamContext *sc;
    int use_subsamples, ret;
    unsigned int sample_count, i, alloc_size = 0;

    ret = get_current_encryption_info(c, &encryption_index, &sc);
    if (ret != 1)
        return ret;

    if (encryption_index->nb_encrypted_samples) {

        av_log(c->fc, AV_LOG_DEBUG, "Ignoring duplicate encryption info in senc\n");
        return 0;
    }

    avio_r8(pb);
    use_subsamples = avio_rb24(pb) & 0x02;

    sample_count = avio_rb32(pb);
    if (sample_count >= INT_MAX / sizeof(*encrypted_samples))
        return AVERROR(ENOMEM);

    for (i = 0; i < sample_count; i++) {
        unsigned int min_samples = FFMIN(FFMAX(i + 1, 1024 * 1024), sample_count);
        encrypted_samples = av_fast_realloc(encryption_index->encrypted_samples, &alloc_size,
                                            min_samples * sizeof(*encrypted_samples));
        if (encrypted_samples) {
            encryption_index->encrypted_samples = encrypted_samples;

            ret = mov_read_sample_encryption_info(
                c, pb, sc, &encryption_index->encrypted_samples[i], use_subsamples);
        } else {
            ret = AVERROR(ENOMEM);
        }
        if (pb->eof_reached) {
            av_log(c->fc, AV_LOG_ERROR, "Hit EOF while reading senc\n");
            ret = AVERROR_INVALIDDATA;
        }

        if (ret < 0) {
            for (; i > 0; i--)
                av_encryption_info_free(encryption_index->encrypted_samples[i - 1]);
            av_freep(&encryption_index->encrypted_samples);
            return ret;
        }
    }
    encryption_index->nb_encrypted_samples = sample_count;

    return 0;
}
