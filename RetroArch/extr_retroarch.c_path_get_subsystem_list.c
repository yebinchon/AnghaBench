
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 struct string_list* subsystem_fullpaths ;

struct string_list *path_get_subsystem_list(void)
{
   return subsystem_fullpaths;
}
