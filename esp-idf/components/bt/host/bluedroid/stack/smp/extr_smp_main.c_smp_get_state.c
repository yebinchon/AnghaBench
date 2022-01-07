
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tSMP_STATE ;
struct TYPE_2__ {int state; } ;


 TYPE_1__ smp_cb ;

tSMP_STATE smp_get_state(void)
{
    return smp_cb.state;
}
