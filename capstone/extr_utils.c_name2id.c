
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int name; } ;
typedef TYPE_1__ name_map ;


 int strcmp (int ,char const*) ;

int name2id(const name_map* map, int max, const char *name)
{
 int i;

 for (i = 0; i < max; i++) {
  if (!strcmp(map[i].name, name)) {
   return map[i].id;
  }
 }


 return -1;
}
