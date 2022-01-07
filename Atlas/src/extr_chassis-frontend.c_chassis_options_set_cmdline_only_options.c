
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chassis_options_t ;


 int G_OPTION_ARG_NONE ;
 int G_OPTION_ARG_STRING ;
 int chassis_options_add (int *,char*,char,int ,int ,...) ;

int chassis_options_set_cmdline_only_options(chassis_options_t *opts,
  int *print_version,
  char **config_file) {

 chassis_options_add(opts,
  "version", 'V', 0, G_OPTION_ARG_NONE, print_version, "Show version", ((void*)0));

 chassis_options_add(opts,
  "defaults-file", 0, 0, G_OPTION_ARG_STRING, config_file, "configuration file", "<file>");

 return 0;
}
