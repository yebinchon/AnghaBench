
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int usb_recvbuffer_ex (int ,void*,int,int) ;

int usb_recvbuffer(s32 chn,void *buffer,int size) {
 return usb_recvbuffer_ex(chn, buffer, size, -1);
}
