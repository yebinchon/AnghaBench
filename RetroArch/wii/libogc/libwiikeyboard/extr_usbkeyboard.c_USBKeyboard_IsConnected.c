
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connected; } ;


 TYPE_1__* _kbd ;

bool USBKeyboard_IsConnected(void) {
 if (!_kbd)
  return 0;

 return _kbd->connected;
}
