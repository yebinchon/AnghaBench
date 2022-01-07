
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;


 int * config_file_new_internal (char const*,int ,int *) ;

config_file_t *config_file_new(const char *path)
{
   return config_file_new_internal(path, 0, ((void*)0));
}
