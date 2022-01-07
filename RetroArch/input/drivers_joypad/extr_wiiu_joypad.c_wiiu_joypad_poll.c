
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* poll ) () ;} ;
struct TYPE_5__ {int (* poll ) () ;} ;
struct TYPE_4__ {int (* poll ) () ;} ;


 TYPE_3__ hidpad_driver ;
 TYPE_2__ kpad_driver ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 TYPE_1__ wpad_driver ;

__attribute__((used)) static void wiiu_joypad_poll(void)
{
   wpad_driver.poll();
   kpad_driver.poll();



}
