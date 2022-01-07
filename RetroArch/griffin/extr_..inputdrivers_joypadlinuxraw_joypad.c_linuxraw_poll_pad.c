
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linuxraw_joypad {int * axes; int buttons; int fd; } ;
struct js_event {unsigned int type; size_t number; int value; } ;
typedef scalar_t__ ssize_t ;
typedef int event ;


 int BIT32_CLEAR (int ,size_t) ;
 int BIT32_SET (int ,size_t) ;


 unsigned int JS_EVENT_INIT ;
 size_t NUM_AXES ;
 size_t NUM_BUTTONS ;
 scalar_t__ read (int ,struct js_event*,int) ;

__attribute__((used)) static void linuxraw_poll_pad(struct linuxraw_joypad *pad)
{
   struct js_event event;

   while (read(pad->fd, &event, sizeof(event)) == (ssize_t)sizeof(event))
   {
      unsigned type = event.type & ~JS_EVENT_INIT;

      switch (type)
      {
         case 128:
            if (event.number < NUM_BUTTONS)
            {
               if (event.value)
                  BIT32_SET(pad->buttons, event.number);
               else
                  BIT32_CLEAR(pad->buttons, event.number);
            }
            break;

         case 129:
            if (event.number < NUM_AXES)
               pad->axes[event.number] = event.value;
            break;
      }
   }
}
