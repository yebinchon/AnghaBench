
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ wiiu_input_t ;
struct TYPE_3__ {int (* poll ) () ;} ;


 int stub1 () ;

__attribute__((used)) static void wiiu_input_poll(void *data)
{
   wiiu_input_t *wiiu = (wiiu_input_t*)data;

   if (!wiiu)
     return;

   if (wiiu->joypad)
     wiiu->joypad->poll();
}
