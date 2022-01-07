
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tSMP_BR_STATE ;
struct TYPE_2__ {int br_state; } ;


 TYPE_1__ smp_cb ;

tSMP_BR_STATE smp_get_br_state(void)
{
    return smp_cb.br_state;
}
