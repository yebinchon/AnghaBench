
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int usb_sendbuffer_ex (int ,void const*,int,int) ;

int usb_sendbuffer(s32 chn,const void *buffer,int size) {
 return usb_sendbuffer_ex(chn, buffer, size, -1);
}
