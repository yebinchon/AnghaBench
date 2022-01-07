
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
typedef int gint ;
typedef int gchar ;
struct TYPE_3__ {void* arg_description; void* description; int arg_data; int arg; int flags; int short_name; void* long_name; } ;
typedef TYPE_1__ chassis_option_t ;
typedef int GOptionArg ;


 void* g_strdup (char const*) ;

int chassis_option_set(chassis_option_t *opt,
  const char *long_name,
  gchar short_name,
  gint flags,
  GOptionArg arg,
  gpointer arg_data,
  const char *description,
  const char *arg_description) {
 opt->long_name = g_strdup(long_name);
 opt->short_name = short_name;
 opt->flags = flags;
 opt->arg = arg;
 opt->arg_data = arg_data;
 opt->description = g_strdup(description);
 opt->arg_description = g_strdup(arg_description);

 return 0;
}
