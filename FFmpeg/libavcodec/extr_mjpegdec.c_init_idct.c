
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int idct_permutation; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int scantable; TYPE_4__ idsp; } ;
typedef TYPE_1__ MJpegDecodeContext ;
typedef TYPE_2__ AVCodecContext ;


 int ff_idctdsp_init (TYPE_4__*,TYPE_2__*) ;
 int ff_init_scantable (int ,int *,int ) ;
 int ff_zigzag_direct ;

__attribute__((used)) static void init_idct(AVCodecContext *avctx)
{
    MJpegDecodeContext *s = avctx->priv_data;

    ff_idctdsp_init(&s->idsp, avctx);
    ff_init_scantable(s->idsp.idct_permutation, &s->scantable,
                      ff_zigzag_direct);
}
