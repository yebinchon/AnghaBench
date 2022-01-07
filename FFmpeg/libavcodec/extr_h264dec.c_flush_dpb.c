
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ context_initialized; scalar_t__ mb_y; int cur_pic; int * cur_pic_ptr; int * DPB; int sei; int delayed_pic; } ;
typedef TYPE_1__ H264Context ;
typedef TYPE_2__ AVCodecContext ;


 int H264_MAX_PICTURE_COUNT ;
 int ff_h264_flush_change (TYPE_1__*) ;
 int ff_h264_free_tables (TYPE_1__*) ;
 int ff_h264_sei_uninit (int *) ;
 int ff_h264_unref_picture (TYPE_1__*,int *) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void flush_dpb(AVCodecContext *avctx)
{
    H264Context *h = avctx->priv_data;
    int i;

    memset(h->delayed_pic, 0, sizeof(h->delayed_pic));

    ff_h264_flush_change(h);
    ff_h264_sei_uninit(&h->sei);

    for (i = 0; i < H264_MAX_PICTURE_COUNT; i++)
        ff_h264_unref_picture(h, &h->DPB[i]);
    h->cur_pic_ptr = ((void*)0);
    ff_h264_unref_picture(h, &h->cur_pic);

    h->mb_y = 0;

    ff_h264_free_tables(h);
    h->context_initialized = 0;
}
