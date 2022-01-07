
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; } ;


 int MAX_USERS ;
 TYPE_1__* parport_pads ;
 int parport_poll_pad (TYPE_1__*) ;

__attribute__((used)) static void parport_joypad_poll(void)
{
   int i;

   for (i = 0; i < MAX_USERS; i++)
   {
      if (parport_pads[i].fd >= 0)
         parport_poll_pad(&parport_pads[i]);
   }
}
