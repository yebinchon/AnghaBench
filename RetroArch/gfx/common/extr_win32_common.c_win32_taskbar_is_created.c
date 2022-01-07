
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_taskbar_is_created ;

bool win32_taskbar_is_created(void)
{
   return g_taskbar_is_created;
}
