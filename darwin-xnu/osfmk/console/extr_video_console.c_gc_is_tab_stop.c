
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {unsigned int v_columns; } ;


 int FALSE ;
 int* gc_buffer_tab_stops ;
 TYPE_1__ vinfo ;

__attribute__((used)) static boolean_t gc_is_tab_stop(unsigned int column)
{
 if (gc_buffer_tab_stops == ((void*)0))
  return ((column % 8) == 0);
 if (column < vinfo.v_columns)
  return gc_buffer_tab_stops[column];
 else
  return FALSE;
}
