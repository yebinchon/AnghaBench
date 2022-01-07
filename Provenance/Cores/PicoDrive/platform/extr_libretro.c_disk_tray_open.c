
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disk_ejected ;
 int lprintf (char*) ;

__attribute__((used)) static void disk_tray_open(void)
{
 lprintf("cd tray open\n");
 disk_ejected = 1;
}
