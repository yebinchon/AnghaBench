
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct js_event {scalar_t__ type; size_t number; int value; } ;
struct TYPE_3__ {int fd; size_t axiscount; int* axis; } ;
typedef TYPE_1__ perlinuxjoy_struct ;


 scalar_t__ JS_EVENT_AXIS ;
 int PACKEVENT (struct js_event) ;
 int PerKeyDown (int) ;
 int PerKeyUp (int) ;
 int THRESHOLD ;
 int abs (int) ;
 size_t read (int,struct js_event*,int) ;

__attribute__((used)) static void LinuxJoyHandleEvents(perlinuxjoy_struct * joystick)
{
   struct js_event evt;
   size_t num_read;

   if (joystick->fd == -1) return;

   while ((num_read = read(joystick->fd, &evt, sizeof(struct js_event))) > 0)
   {
      if (evt.type == JS_EVENT_AXIS)
      {
         int initvalue;
         int disp;
         u8 axis = evt.number;

         if (axis >= joystick->axiscount) return;

         initvalue = joystick->axis[axis];
         disp = abs(initvalue - evt.value);
         if (disp < THRESHOLD) evt.value = 0;
         else if (evt.value < initvalue) evt.value = -1;
         else evt.value = 1;
      }

      if (evt.value != 0)
      {
         PerKeyDown(PACKEVENT(evt));
      }
      else
      {
         PerKeyUp(PACKEVENT(evt));
         PerKeyUp(0x10000 | PACKEVENT(evt));
      }
   }
}
