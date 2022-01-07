
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ noticeMsgTime ;
 int osd_text (int,char const*,int,int) ;
 int reset_timing ;
 scalar_t__ sceKernelGetSystemTimeLow () ;

void emu_msg_cb(const char *msg)
{
 osd_text(4, msg, 1, 1);
 noticeMsgTime = sceKernelGetSystemTimeLow() - 2000000;


 reset_timing = 1;
}
