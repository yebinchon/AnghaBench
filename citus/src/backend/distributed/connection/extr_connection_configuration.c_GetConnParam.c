
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; char const** values; int * keywords; } ;
typedef size_t Index ;


 TYPE_1__ ConnParams ;
 scalar_t__ strcmp (char const*,int ) ;

const char *
GetConnParam(const char *keyword)
{
 Index i = 0;

 for (i = 0; i < ConnParams.size; i++)
 {
  if (strcmp(keyword, ConnParams.keywords[i]) == 0)
  {
   return ConnParams.values[i];
  }
 }

 return ((void*)0);
}
