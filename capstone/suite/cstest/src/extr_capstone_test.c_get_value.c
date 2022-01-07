
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int str; } ;
typedef TYPE_1__ single_dict ;


 int strcmp (int ,char const*) ;

int get_value(single_dict d[], unsigned int size, const char *str)
{
 int i;

 for (i = 0; i < size; ++i)
  if (!strcmp(d[i].str, str))
   return d[i].value;
 return -1;
}
