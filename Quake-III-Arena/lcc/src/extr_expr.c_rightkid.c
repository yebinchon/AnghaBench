
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_5__ {scalar_t__ op; struct TYPE_5__** kids; } ;


 scalar_t__ RIGHT ;
 int assert (TYPE_1__*) ;

Tree rightkid(Tree p) {
 while (p && p->op == RIGHT)
  if (p->kids[1])
   p = p->kids[1];
  else if (p->kids[0])
   p = p->kids[0];
  else
   assert(0);
 assert(p);
 return p;
}
