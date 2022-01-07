
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; } ;
typedef TYPE_1__ double_dict ;


 int strcmp (char const*,int ) ;

int get_index(double_dict d[], unsigned int size, const char *s)
{
 int i;

 for (i = 0; i < size; ++i) {
  if (!strcmp(s, d[i].str))
   return i;
 }
 return -1;
}
