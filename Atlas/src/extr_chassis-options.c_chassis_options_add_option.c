
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
typedef TYPE_1__ chassis_options_t ;
typedef int chassis_option_t ;


 int g_list_append (int ,int *) ;

int chassis_options_add_option(chassis_options_t *opts,
  chassis_option_t *opt) {

 opts->options = g_list_append(opts->options, opt);

 return 0;
}
