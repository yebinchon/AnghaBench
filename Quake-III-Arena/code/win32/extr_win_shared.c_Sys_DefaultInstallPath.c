
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Sys_Cwd () ;

char *Sys_DefaultInstallPath(void)
{
 return Sys_Cwd();
}
