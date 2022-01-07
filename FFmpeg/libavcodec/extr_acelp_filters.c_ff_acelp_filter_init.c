
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acelp_apply_order_2_transfer_function; int acelp_interpolatef; } ;
typedef TYPE_1__ ACELPFContext ;


 scalar_t__ HAVE_MIPSFPU ;
 int ff_acelp_apply_order_2_transfer_function ;
 int ff_acelp_filter_init_mips (TYPE_1__*) ;
 int ff_acelp_interpolatef ;

void ff_acelp_filter_init(ACELPFContext *c)
{
    c->acelp_interpolatef = ff_acelp_interpolatef;
    c->acelp_apply_order_2_transfer_function = ff_acelp_apply_order_2_transfer_function;

    if(HAVE_MIPSFPU)
        ff_acelp_filter_init_mips(c);
}
