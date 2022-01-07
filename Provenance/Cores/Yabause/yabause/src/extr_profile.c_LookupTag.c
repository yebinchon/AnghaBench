
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int str_name; } ;
typedef TYPE_1__ entry_t ;


 int g_i_hwm ;
 TYPE_1__* g_tag ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static entry_t* LookupTag (char* str_tag) {
  int i ;
  for (i = 0; i < g_i_hwm; ++i) {
    if (strcmp (g_tag [i].str_name, str_tag) == 0) {
      return &g_tag [i] ;
    }
  }
  return 0 ;
}
