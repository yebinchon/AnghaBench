
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct js_event {int dummy; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ perlinuxjoy_struct ;


 size_t read (int,struct js_event*,int) ;

__attribute__((used)) static void LinuxJoyFlush(perlinuxjoy_struct * joystick)
{
   struct js_event evt;
   size_t num_read;

   if (joystick->fd == -1) return;

   while ((num_read = read(joystick->fd, &evt, sizeof(struct js_event))) > 0);
}
