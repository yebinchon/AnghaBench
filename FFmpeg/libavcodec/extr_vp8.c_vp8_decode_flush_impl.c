
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int framep; int * frames; } ;
typedef TYPE_1__ VP8Context ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int FF_ARRAY_ELEMS (int *) ;
 int free_buffers (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int vp8_release_frame (TYPE_1__*,int *) ;

__attribute__((used)) static void vp8_decode_flush_impl(AVCodecContext *avctx, int free_mem)
{
    VP8Context *s = avctx->priv_data;
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(s->frames); i++)
        vp8_release_frame(s, &s->frames[i]);
    memset(s->framep, 0, sizeof(s->framep));

    if (free_mem)
        free_buffers(s);
}
