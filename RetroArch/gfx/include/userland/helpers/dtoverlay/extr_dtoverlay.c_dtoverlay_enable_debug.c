
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtoverlay_debug_enabled ;

void dtoverlay_enable_debug(int enable)
{
   dtoverlay_debug_enabled = enable;
}
