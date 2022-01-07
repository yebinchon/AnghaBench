
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ disk_ejected ;
 int lprintf (char*) ;

__attribute__((used)) static void disk_tray_close(void)
{
 lprintf("cd tray close\n");
 disk_ejected = 0;
}
