
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {unsigned int v_columns; } ;


 int * gc_buffer_tab_stops ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_set_tab_stop(unsigned int column, boolean_t enabled)
{
 if (gc_buffer_tab_stops && (column < vinfo.v_columns)) {
  gc_buffer_tab_stops[column] = enabled;
 }
}
