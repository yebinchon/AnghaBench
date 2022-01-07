
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t gint ;
typedef int gchar ;
struct TYPE_3__ {int arg; int *** arg_data; scalar_t__ long_name; } ;
typedef TYPE_1__ GOptionEntry ;




 int chassis_resolve_path (char const*,int **) ;

int chassis_keyfile_resolve_path(const char *base_dir, GOptionEntry *config_entries) {
 int entry_idx;

 for (entry_idx = 0; config_entries[entry_idx].long_name; entry_idx++) {
  GOptionEntry entry = config_entries[entry_idx];

  switch(entry.arg) {
  case 129: {
   gchar **data = entry.arg_data;
   chassis_resolve_path(base_dir, data);
   break;
  }
  case 128: {
   gchar ***data = entry.arg_data;
   gchar **files = *data;
   if (((void*)0) != files) {
    gint j;
    for (j = 0; files[j]; j++) chassis_resolve_path(base_dir, &files[j]);
   }
   break;
  }
  default:

   break;
  }
 }

 return 0;
}
