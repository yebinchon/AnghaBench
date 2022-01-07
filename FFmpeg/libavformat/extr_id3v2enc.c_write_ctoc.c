
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int nb_chapters; int pb; } ;
struct TYPE_5__ {int len; } ;
typedef TYPE_1__ ID3v2EncContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ ID3v2_HEADER_SIZE ;
 int MKBETAG (char,char,char,char) ;
 int av_freep (int **) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 scalar_t__ avio_put_str (int *,char*) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int ,int ) ;
 int avio_wb32 (int ,int) ;
 int avio_write (int ,int *,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int write_ctoc(AVFormatContext *s, ID3v2EncContext *id3, int enc)
{
    uint8_t *dyn_buf = ((void*)0);
    AVIOContext *dyn_bc = ((void*)0);
    char name[123];
    int len, ret;

    if (s->nb_chapters == 0)
        return 0;

    if ((ret = avio_open_dyn_buf(&dyn_bc)) < 0)
        goto fail;

    id3->len += avio_put_str(dyn_bc, "toc");
    avio_w8(dyn_bc, 0x03);
    avio_w8(dyn_bc, s->nb_chapters);
    for (int i = 0; i < s->nb_chapters; i++) {
        snprintf(name, 122, "ch%d", i);
        id3->len += avio_put_str(dyn_bc, name);
    }
    len = avio_close_dyn_buf(dyn_bc, &dyn_buf);
    id3->len += 16 + ID3v2_HEADER_SIZE;

    avio_wb32(s->pb, MKBETAG('C', 'T', 'O', 'C'));
    avio_wb32(s->pb, len);
    avio_wb16(s->pb, 0);
    avio_write(s->pb, dyn_buf, len);

fail:
    if (dyn_bc && !dyn_buf)
        avio_close_dyn_buf(dyn_bc, &dyn_buf);
    av_freep(&dyn_buf);

    return ret;
}
