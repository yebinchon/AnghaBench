
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 scalar_t__ GetTickCount () ;
 TYPE_1__ currentConfig ;
 int emu_text_out16 (int,int,char const*) ;
 int * fb_lock (int) ;
 int fb_unlock () ;
 int * giz_screen ;
 int memset32 (int*,int ,int) ;
 scalar_t__ noticeMsgTime ;
 int reset_timing ;

__attribute__((used)) static void emu_msg_cb(const char *msg)
{
 if (giz_screen != ((void*)0)) fb_unlock();
 giz_screen = fb_lock(1);

 memset32((int *)((char *)giz_screen + 321*232*2), 0, 321*8*2/4);
 emu_text_out16(4, 232, msg);
 noticeMsgTime = GetTickCount() - 2000;


 reset_timing = 1;

 fb_unlock();
 giz_screen = fb_lock((currentConfig.EmuOpt&0x8000) ? 0 : 1);
}
