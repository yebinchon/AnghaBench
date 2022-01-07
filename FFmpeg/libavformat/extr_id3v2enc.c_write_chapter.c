
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int metadata; int time_base; int end; int start; } ;
struct TYPE_11__ {int * pb; TYPE_4__** chapters; } ;
struct TYPE_10__ {int member_0; int member_1; } ;
struct TYPE_9__ {int len; } ;
typedef TYPE_1__ ID3v2EncContext ;
typedef TYPE_2__ AVRational ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVChapter ;


 scalar_t__ ID3v2_HEADER_SIZE ;
 int MKBETAG (char,char,char,char) ;
 int av_freep (int **) ;
 int av_rescale_q (int ,int ,TYPE_2__ const) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 scalar_t__ avio_put_str (int *,char*) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int) ;
 int snprintf (char*,int,char*,int) ;
 int write_metadata (int *,int *,TYPE_1__*,int) ;

__attribute__((used)) static int write_chapter(AVFormatContext *s, ID3v2EncContext *id3, int id, int enc)
{
    const AVRational time_base = {1, 1000};
    AVChapter *ch = s->chapters[id];
    uint8_t *dyn_buf = ((void*)0);
    AVIOContext *dyn_bc = ((void*)0);
    char name[123];
    int len, start, end, ret;

    if ((ret = avio_open_dyn_buf(&dyn_bc)) < 0)
        goto fail;

    start = av_rescale_q(ch->start, ch->time_base, time_base);
    end = av_rescale_q(ch->end, ch->time_base, time_base);

    snprintf(name, 122, "ch%d", id);
    id3->len += avio_put_str(dyn_bc, name);
    avio_wb32(dyn_bc, start);
    avio_wb32(dyn_bc, end);
    avio_wb32(dyn_bc, 0xFFFFFFFFu);
    avio_wb32(dyn_bc, 0xFFFFFFFFu);

    if ((ret = write_metadata(dyn_bc, &ch->metadata, id3, enc)) < 0)
        goto fail;

    len = avio_close_dyn_buf(dyn_bc, &dyn_buf);
    id3->len += 16 + ID3v2_HEADER_SIZE;

    avio_wb32(s->pb, MKBETAG('C', 'H', 'A', 'P'));
    avio_wb32(s->pb, len);
    avio_wb16(s->pb, 0);
    avio_write(s->pb, dyn_buf, len);

fail:
    if (dyn_bc && !dyn_buf)
        avio_close_dyn_buf(dyn_bc, &dyn_buf);
    av_freep(&dyn_buf);

    return ret;
}
