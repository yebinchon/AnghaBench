
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Index ;


 size_t lengthof (char const**) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;

__attribute__((used)) static bool
IsSettingSafeToPropagate(char *name)
{

 const char *skipSettings[] = {
  "citus.propagate_set_commands",
  "client_encoding",
  "exit_on_error",
  "max_stack_depth"
 };
 Index settingIndex = 0;

 for (settingIndex = 0; settingIndex < lengthof(skipSettings); settingIndex++)
 {
  if (pg_strcasecmp(skipSettings[settingIndex], name) == 0)
  {
   return 0;
  }
 }

 return 1;
}
