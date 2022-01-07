
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int __usb_open (int *) ;
 scalar_t__ __usb_register (int *) ;

void physbusif_init()
{
 s32 ret;

 ret = __usb_register(((void*)0));
 if(ret<0) return;

 __usb_open(((void*)0));
}
