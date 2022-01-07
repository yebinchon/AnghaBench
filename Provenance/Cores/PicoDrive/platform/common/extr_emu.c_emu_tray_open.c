
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGS_TrayMenu ;
 int engineState ;

__attribute__((used)) static void emu_tray_open(void)
{
 engineState = PGS_TrayMenu;
}
