
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fdec_num; int * fdec; } ;
typedef TYPE_1__ WavpackContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int wv_reset_saved_context (int ) ;

__attribute__((used)) static void wavpack_decode_flush(AVCodecContext *avctx)
{
    WavpackContext *s = avctx->priv_data;
    int i;

    for (i = 0; i < s->fdec_num; i++)
        wv_reset_saved_context(s->fdec[i]);
}
