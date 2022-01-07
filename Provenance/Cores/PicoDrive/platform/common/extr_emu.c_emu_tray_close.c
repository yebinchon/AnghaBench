
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_status_msg (char*) ;

__attribute__((used)) static void emu_tray_close(void)
{
 emu_status_msg("CD tray closed.");
}
