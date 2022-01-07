
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_9__ {int offset; TYPE_1__* asf_sd; } ;
struct TYPE_8__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {int asf_met; } ;
typedef int GUIDParseTable ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFContext ;


 int ASF_MAX_STREAMS ;
 int AVERROR (int ) ;
 int ENOMEM ;
 int align_position (int *,int ,int ) ;
 int asf_store_aspect_ratio (TYPE_2__*,int,int *,int) ;
 int av_freep (int **) ;
 int * av_malloc (int) ;
 int avio_get_str16le (int *,int,int *,int) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_rl64 (int *) ;
 int avio_skip (int *,int) ;
 int process_metadata (TYPE_2__*,int *,int,int,int,int *) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static int asf_read_metadata_obj(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    uint64_t size = avio_rl64(pb);
    uint16_t nb_recs = avio_rl16(pb);
    int i, ret;

    for (i = 0; i < nb_recs; i++) {
        uint16_t name_len, buflen, type, val_len, st_num;
        uint8_t *name = ((void*)0);

        avio_skip(pb, 2);
        st_num = avio_rl16(pb);
        name_len = avio_rl16(pb);
        buflen = 2 * name_len + 1;
        if (!name_len)
            break;
        type = avio_rl16(pb);
        val_len = avio_rl32(pb);
        name = av_malloc(buflen);
        if (!name)
            return AVERROR(ENOMEM);
        avio_get_str16le(pb, name_len, name,
                         buflen);
        if (!strcmp(name, "AspectRatioX") || !strcmp(name, "AspectRatioY")) {
            ret = asf_store_aspect_ratio(s, st_num, name, type);
            if (ret < 0) {
                av_freep(&name);
                break;
            }
        } else {
            if (st_num < ASF_MAX_STREAMS) {
                if ((ret = process_metadata(s, name, name_len, val_len, type,
                                            &asf->asf_sd[st_num].asf_met)) < 0) {
                    av_freep(&name);
                    break;
                }
            }
        }
        av_freep(&name);
    }

    align_position(pb, asf->offset, size);
    return 0;
}
