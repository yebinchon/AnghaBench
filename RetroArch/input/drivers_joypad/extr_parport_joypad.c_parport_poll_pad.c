
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_joypad {int buttons; scalar_t__* button_enable; int fd; } ;


 int BIT32_CLEAR (int ,int) ;
 scalar_t__ BIT32_GET (int ,int) ;
 int BIT32_SET (int ,int) ;
 int PPRDATA ;
 int PPRSTATUS ;
 char UINT8_C (int) ;
 scalar_t__ ioctl (int ,int ,char*) ;

__attribute__((used)) static void parport_poll_pad(struct parport_joypad *pad)
{
   int i;
   char data;
   char status;

   if (ioctl(pad->fd, PPRDATA, &data) < 0)
      return;
   if (ioctl(pad->fd, PPRSTATUS, &status) < 0)
      return;

   for (i = 0; i < 8; i++)
   {
      if (!(data & UINT8_C(1 << i)) && pad->button_enable[i])
         BIT32_SET(pad->buttons, i);
      else
         BIT32_CLEAR(pad->buttons, i);
   }
   for (i = 3; i < 8; i++)
   {
      if (!(status & UINT8_C(1 << i)) && pad->button_enable[i + 5])
         BIT32_SET(pad->buttons, i + 5);
      else
         BIT32_CLEAR(pad->buttons, i + 5);
   }

   if (BIT32_GET(pad->buttons, 12) && pad->button_enable[12])
      BIT32_CLEAR(pad->buttons, 12);
   else
      BIT32_SET(pad->buttons, 12);
}
