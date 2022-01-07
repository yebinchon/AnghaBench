
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int property; } ;
typedef TYPE_1__ param_dispatch_t ;


 scalar_t__ strcmp (int ,int ) ;

int param_parser_map_alphabet(const param_dispatch_t* param_map, size_t len)
{
 int i;
 for (i = 1; i < len; i++)
  if (strcmp(param_map[i - 1].property, param_map[i].property) >= 0)
   return -1;
 return 0;
}
