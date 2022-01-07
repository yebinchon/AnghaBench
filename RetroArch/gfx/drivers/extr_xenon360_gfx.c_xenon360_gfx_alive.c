
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_quitting ;

__attribute__((used)) static bool xenon360_gfx_alive(void *data)
{
   (void)data;
   return !g_quitting;
}
