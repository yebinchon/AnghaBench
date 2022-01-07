
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_x11_has_focus ;

bool x11_has_focus_internal(void *data)
{
   return g_x11_has_focus;
}
