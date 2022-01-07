
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t k0; size_t k1; void* sum1; void* sum0; } ;
typedef TYPE_1__ TTARice ;


 void** ff_tta_shift_16 ;

void ff_tta_rice_init(TTARice *c, uint32_t k0, uint32_t k1)
{
    c->k0 = k0;
    c->k1 = k1;
    c->sum0 = ff_tta_shift_16[k0];
    c->sum1 = ff_tta_shift_16[k1];
}
