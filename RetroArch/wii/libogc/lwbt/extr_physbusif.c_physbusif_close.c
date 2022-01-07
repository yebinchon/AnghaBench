
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int openstate; } ;


 TYPE_1__ __usbdev ;
 int __wait4hci ;

void physbusif_close()
{
 if(__usbdev.openstate!=0x0002) return;

 __usbdev.openstate = 4;
 __wait4hci = 1;
}
