
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {TYPE_1__** nodes; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_4__ {scalar_t__ planenum; int contents; } ;


 int CONTENTS_SOLID ;
 int Error (char*) ;
 scalar_t__ PLANENUM_LEAF ;

qboolean Portal_EntityFlood (portal_t *p, int s)
{
 if (p->nodes[0]->planenum != PLANENUM_LEAF
  || p->nodes[1]->planenum != PLANENUM_LEAF)
  Error ("Portal_EntityFlood: not a leaf");


 if ( (p->nodes[0]->contents & CONTENTS_SOLID)
 || (p->nodes[1]->contents & CONTENTS_SOLID) )
  return 0;


 return 1;
}
