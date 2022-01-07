
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hardware; scalar_t__ pal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int PAHW_32X ;
 int PAHW_MCD ;
 int PAHW_PICO ;
 int PAHW_SMS ;
 TYPE_2__ Pico ;
 int PicoAHW ;
 int emu_status_msg (char*,char const*,char const*,int,char const*) ;

__attribute__((used)) static void system_announce(void)
{
 const char *sys_name, *tv_standard, *extra = "";
 int fps;

 if (PicoAHW & PAHW_SMS) {
  sys_name = "Master System";



 } else if (PicoAHW & PAHW_PICO) {
  sys_name = "Pico";
 } else if ((PicoAHW & (PAHW_32X|PAHW_MCD)) == (PAHW_32X|PAHW_MCD)) {
  sys_name = "32X + Mega CD";
  if ((Pico.m.hardware & 0xc0) == 0x80)
   sys_name = "32X + Sega CD";
 } else if (PicoAHW & PAHW_MCD) {
  sys_name = "Mega CD";
  if ((Pico.m.hardware & 0xc0) == 0x80)
   sys_name = "Sega CD";
 } else if (PicoAHW & PAHW_32X) {
  sys_name = "32X";
 } else {
  sys_name = "MegaDrive";
  if ((Pico.m.hardware & 0xc0) == 0x80)
   sys_name = "Genesis";
 }
 tv_standard = Pico.m.pal ? "PAL" : "NTSC";
 fps = Pico.m.pal ? 50 : 60;

 emu_status_msg("%s %s / %dFPS%s", tv_standard, sys_name, fps, extra);
}
