
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int __r1; int __r2; } ;
typedef TYPE_1__ mpc_decoder ;


 int memset (TYPE_1__*,int ,int) ;
 int mpc_decoder_init_quant (TYPE_1__*,float) ;

void mpc_decoder_setup(mpc_decoder *d)
{
 memset(d, 0, sizeof *d);

 d->__r1 = 1;
 d->__r2 = 1;

 mpc_decoder_init_quant(d, 1.0f);
}
