
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start_time; int str_name; } ;
typedef TYPE_1__ entry_t ;


 int NUM_TAGS ;
 int g_i_hwm ;
 TYPE_1__* g_tag ;
 int strcpy (int ,char*) ;

__attribute__((used)) static entry_t* AddTag (char* str_tag) {
  if (g_i_hwm + 1 == NUM_TAGS) {

    return 0 ;
  }

  strcpy (g_tag [g_i_hwm].str_name, str_tag) ;
  g_tag [g_i_hwm].start_time = -1 ;

  return &g_tag [g_i_hwm++] ;
}
