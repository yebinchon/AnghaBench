
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* state; TYPE_1__* joypad; } ;
typedef TYPE_2__ linuxraw_input_t ;
struct TYPE_3__ {int (* poll ) () ;} ;


 int KEY_C ;
 size_t KEY_LEFTCTRL ;
 size_t KEY_RIGHTCTRL ;
 int SIGINT ;
 int STDIN_FILENO ;
 int getpid () ;
 int kill (int ,int ) ;
 scalar_t__ read (int ,int*,int) ;
 int stub1 () ;

__attribute__((used)) static void linuxraw_input_poll(void *data)
{
   uint8_t c;
   linuxraw_input_t *linuxraw = (linuxraw_input_t*)data;

   while (read(STDIN_FILENO, &c, 1) > 0)
   {
      bool pressed;
      uint16_t t;

      if (c == KEY_C && (linuxraw->state[KEY_LEFTCTRL] || linuxraw->state[KEY_RIGHTCTRL]))
         kill(getpid(), SIGINT);

      pressed = !(c & 0x80);
      c &= ~0x80;


      if (!c)
         read(STDIN_FILENO, &t, 2);
      else
         linuxraw->state[c] = pressed;
   }

   if (linuxraw->joypad)
      linuxraw->joypad->poll();
}
