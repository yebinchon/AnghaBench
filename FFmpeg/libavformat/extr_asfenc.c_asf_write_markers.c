
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_11__ {int time_base; int start; int metadata; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int nb_chapters; TYPE_4__** chapters; int * pb; int * priv_data; } ;
struct TYPE_8__ {int member_0; int member_1; } ;
typedef TYPE_1__ AVRational ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef TYPE_4__ AVChapter ;
typedef int ASFContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int PREROLL_TIME ;
 TYPE_3__* av_dict_get (int ,char*,int *,int ) ;
 int av_freep (int **) ;
 scalar_t__ av_rescale_q (int ,int ,TYPE_1__) ;
 int avio_close_dyn_buf (int *,int **) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 int avio_put_str16le (int *,int ) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int) ;
 int avio_wl64 (int *,scalar_t__) ;
 int avio_write (int *,int *,int) ;
 int end_header (int *,scalar_t__) ;
 int ff_asf_marker_header ;
 int ff_asf_reserved_4 ;
 int ff_put_guid (int *,int *) ;
 int get_send_time (int *,scalar_t__,scalar_t__*) ;
 scalar_t__ put_header (int *,int *) ;

__attribute__((used)) static int asf_write_markers(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;
    AVRational scale = {1, 10000000};
    int64_t hpos = put_header(pb, &ff_asf_marker_header);

    ff_put_guid(pb, &ff_asf_reserved_4);
    avio_wl32(pb, s->nb_chapters);
    avio_wl16(pb, 0);
    avio_wl16(pb, 0);

    for (i = 0; i < s->nb_chapters; i++) {
        AVChapter *c = s->chapters[i];
        AVDictionaryEntry *t = av_dict_get(c->metadata, "title", ((void*)0), 0);
        int64_t pres_time = av_rescale_q(c->start, c->time_base, scale);
        uint64_t offset;
        int32_t send_time = get_send_time(asf, pres_time, &offset);
        int len = 0;
        uint8_t *buf;
        AVIOContext *dyn_buf;
        if (t) {
            if (avio_open_dyn_buf(&dyn_buf) < 0)
                return AVERROR(ENOMEM);
            avio_put_str16le(dyn_buf, t->value);
            len = avio_close_dyn_buf(dyn_buf, &buf);
        }
        avio_wl64(pb, offset);
        avio_wl64(pb, pres_time + PREROLL_TIME * 10000);
        avio_wl16(pb, 12 + len);
        avio_wl32(pb, send_time);
        avio_wl32(pb, 0);
        avio_wl32(pb, len / 2);
        if (t) {
            avio_write(pb, buf, len);
            av_freep(&buf);
        }
    }
    end_header(pb, hpos);
    return 0;
}
