
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gint ;
typedef int gchar ;
typedef int chassis_options_t ;
typedef int chassis_option_t ;
typedef int GOptionArg ;


 int chassis_option_free (int *) ;
 int * chassis_option_new () ;
 scalar_t__ chassis_option_set (int *,char const*,int ,int ,int ,int ,char const*,char const*) ;
 scalar_t__ chassis_options_add_option (int *,int *) ;

int chassis_options_add(chassis_options_t *opts,
  const char *long_name,
  gchar short_name,
  gint flags,
  GOptionArg arg,
  gpointer arg_data,
  const char *description,
  const char *arg_description) {
 chassis_option_t *opt;

 opt = chassis_option_new();
 if (0 != chassis_option_set(opt,
   long_name,
   short_name,
   flags,
   arg,
   arg_data,
   description,
   arg_description) ||
     0 != chassis_options_add_option(opts, opt)) {
  chassis_option_free(opt);
  return -1;
 } else {
  return 0;
 }
}
