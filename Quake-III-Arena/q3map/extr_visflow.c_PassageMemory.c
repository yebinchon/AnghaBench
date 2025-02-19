
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t leaf; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
typedef int passage_t ;
struct TYPE_6__ {int numportals; TYPE_1__** portals; } ;
typedef TYPE_2__ leaf_t ;


 int _printf (char*,int) ;
 TYPE_2__* leafs ;
 int numportals ;
 scalar_t__ portalbytes ;
 TYPE_1__** sorted_portals ;

void PassageMemory(void)
{
 int i, j, totalmem, totalportals;
 vportal_t *portal, *target;
 leaf_t *leaf;

 totalmem = 0;
 totalportals = 0;
 for (i = 0; i < numportals; i++)
 {
  portal = sorted_portals[i];
  if (portal->removed)
   continue;
  leaf = &leafs[portal->leaf];
  for (j = 0; j < leaf->numportals; j++)
  {
   target = leaf->portals[j];
   if (target->removed)
    continue;
   totalmem += sizeof(passage_t) + portalbytes;
   totalportals++;
  }
 }
 _printf("%7i average number of passages per leaf\n", totalportals / numportals);
 _printf("%7i MB required passage memory\n", totalmem >> 10 >> 10);
}
