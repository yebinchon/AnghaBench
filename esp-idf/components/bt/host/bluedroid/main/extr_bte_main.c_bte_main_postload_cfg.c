
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* do_postload ) () ;} ;


 TYPE_1__* hci ;
 int stub1 () ;

void bte_main_postload_cfg(void)
{
    hci->do_postload();
}
