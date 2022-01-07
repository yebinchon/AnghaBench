
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_time; int str_name; } ;


 int g_i_hwm ;
 TYPE_1__* g_tag ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int Nested (char* str_tag) {
  int i ;
  for (i = 0; i < g_i_hwm; ++i) {
    if (strcmp (g_tag [i].str_name, str_tag) == 0 && g_tag [i].start_time > -1) {

      return 1 ;
    }
  }

  return 0 ;
}
