
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* g_screen_ptr ;
 scalar_t__ screen_buff ;

void plat_init(void)
{
 g_screen_ptr = (void *)screen_buff;
}
