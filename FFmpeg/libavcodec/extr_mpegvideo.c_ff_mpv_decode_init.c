
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int codec_tag; int workaround_bugs; TYPE_1__* codec; int coded_height; int coded_width; } ;
struct TYPE_7__ {int codec_tag; int workaround_bugs; int codec_id; int height; int width; TYPE_3__* avctx; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_2__ MpegEncContext ;
typedef TYPE_3__ AVCodecContext ;


 int avpriv_toupper4 (int ) ;

void ff_mpv_decode_init(MpegEncContext *s, AVCodecContext *avctx)
{
    s->avctx = avctx;
    s->width = avctx->coded_width;
    s->height = avctx->coded_height;
    s->codec_id = avctx->codec->id;
    s->workaround_bugs = avctx->workaround_bugs;


    s->codec_tag = avpriv_toupper4(avctx->codec_tag);
}
