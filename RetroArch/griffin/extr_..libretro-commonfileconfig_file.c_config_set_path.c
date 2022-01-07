
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;
typedef int buf ;


 int PATH_MAX_LENGTH ;
 int config_set_string (int *,char const*,char const*) ;
 int fill_pathname_abbreviate_special (char*,char const*,int) ;

void config_set_path(config_file_t *conf, const char *entry, const char *val)
{

   config_set_string(conf, entry, val);







}
