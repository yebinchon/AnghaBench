
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int frames_to_skip; int oldDSCF; } ;
typedef TYPE_1__ MPCContext ;
typedef TYPE_2__ AVCodecContext ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void mpc7_decode_flush(AVCodecContext *avctx)
{
    MPCContext *c = avctx->priv_data;

    memset(c->oldDSCF, 0, sizeof(c->oldDSCF));
    c->frames_to_skip = 32;
}
