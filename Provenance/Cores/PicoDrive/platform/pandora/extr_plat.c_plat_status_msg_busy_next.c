
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_status_msg (char*) ;
 int pemu_finalize_frame (char*,char const*) ;
 int plat_status_msg_clear () ;
 int plat_video_flip () ;
 int reset_timing ;

void plat_status_msg_busy_next(const char *msg)
{
 plat_status_msg_clear();
 pemu_finalize_frame("", msg);
 plat_video_flip();
 emu_status_msg("");
 reset_timing = 1;
}
