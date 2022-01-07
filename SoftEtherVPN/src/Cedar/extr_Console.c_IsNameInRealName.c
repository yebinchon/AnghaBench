
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ StartWith (char*,char*) ;

bool IsNameInRealName(char *input_name, char *real_name)
{

 if (input_name == ((void*)0) || real_name == ((void*)0))
 {
  return 0;
 }

 if (StartWith(real_name, input_name))
 {
  return 1;
 }

 return 0;
}
