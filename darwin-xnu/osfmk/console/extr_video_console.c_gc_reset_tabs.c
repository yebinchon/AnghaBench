
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int v_columns; } ;


 int* gc_buffer_tab_stops ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_reset_tabs(void)
{
 unsigned int i;

 if (!gc_buffer_tab_stops) return;

 for (i = 0; i < vinfo.v_columns; i++) {
  gc_buffer_tab_stops[i] = ((i % 8) == 0);
 }

}
