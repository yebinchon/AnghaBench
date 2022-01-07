
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_Coldstart () ;
 scalar_t__ CARTRIDGE_autoreboot ;

__attribute__((used)) static void AutoReboot(void)
{
 if (CARTRIDGE_autoreboot)
  Atari800_Coldstart();
}
