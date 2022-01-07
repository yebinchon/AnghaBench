
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t gint ;
typedef int gchar ;
struct TYPE_4__ {int min_lvl; } ;
typedef TYPE_1__ chassis_log ;
struct TYPE_5__ {int lvl; scalar_t__ name; } ;


 TYPE_2__* log_lvl_map ;
 scalar_t__ strcmp (scalar_t__,int const*) ;

int chassis_log_set_level(chassis_log *log, const gchar *level) {
 gint i;

 for (i = 0; log_lvl_map[i].name; i++) {
  if (0 == strcmp(log_lvl_map[i].name, level)) {
   log->min_lvl = log_lvl_map[i].lvl;
   return 0;
  }
 }

 return -1;
}
