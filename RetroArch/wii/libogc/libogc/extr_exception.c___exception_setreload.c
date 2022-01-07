
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reload_timer ;

void __exception_setreload(int t)
{
 reload_timer = t*50;
}
