
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int axis; } ;
typedef TYPE_1__ perlinuxjoy_struct ;


 int close (int) ;
 int free (int ) ;

__attribute__((used)) static void LinuxJoyDeInit(perlinuxjoy_struct * joystick)
{
   if (joystick->fd == -1) return;

   close(joystick->fd);
   free(joystick->axis);
}
