
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gc_reset_vt100 () ;
 scalar_t__ gc_x ;
 scalar_t__ gc_y ;

__attribute__((used)) static void
gc_reset_screen(void)
{
 gc_reset_vt100();
 gc_x = gc_y = 0;
}
