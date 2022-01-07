
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int const id; char const* name; } ;
typedef TYPE_1__ name_map ;



const char *id2name(const name_map* map, int max, const unsigned int id)
{
 int i;

 for (i = 0; i < max; i++) {
  if (map[i].id == id) {
   return map[i].name;
  }
 }


 return ((void*)0);
}
