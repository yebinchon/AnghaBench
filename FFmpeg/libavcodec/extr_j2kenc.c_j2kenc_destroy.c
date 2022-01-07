
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_data; } ;
typedef int Jpeg2000EncoderContext ;
typedef TYPE_1__ AVCodecContext ;


 int cleanup (int *) ;

__attribute__((used)) static int j2kenc_destroy(AVCodecContext *avctx)
{
    Jpeg2000EncoderContext *s = avctx->priv_data;

    cleanup(s);
    return 0;
}
