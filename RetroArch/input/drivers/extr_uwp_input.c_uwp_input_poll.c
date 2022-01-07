
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ uwp_input_t ;
struct TYPE_3__ {int (* poll ) () ;} ;


 int stub1 () ;
 int uwp_input_next_frame () ;

__attribute__((used)) static void uwp_input_poll(void *data)
{
   uwp_input_t *uwp = (uwp_input_t*)data;

   if (uwp && uwp->joypad)
      uwp->joypad->poll();

   uwp_input_next_frame();
}
