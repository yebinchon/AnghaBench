
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int global_t ;


 int config_parse_file (int *) ;
 int config_set_defaults (int *) ;

void config_load(void *data)
{
   global_t *global = (global_t*)data;
   config_set_defaults(global);
   config_parse_file(global);
}
