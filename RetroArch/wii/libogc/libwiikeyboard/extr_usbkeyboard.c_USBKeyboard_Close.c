
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;


 int USB_CloseDevice (int*) ;
 TYPE_1__* _kbd ;
 int free (TYPE_1__*) ;

void USBKeyboard_Close(void)
{
 if (!_kbd)
  return;

 if(_kbd->fd != -1)
  USB_CloseDevice(&_kbd->fd);

 free(_kbd);
 _kbd = ((void*)0);

 return;
}
