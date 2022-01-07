
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ planenum; int contents; int occupied; struct TYPE_3__** children; } ;
typedef TYPE_1__ node_t ;


 int CONTENTS_SOLID ;
 scalar_t__ PLANENUM_LEAF ;
 int c_inside ;
 int c_outside ;
 int c_solid ;

void FillOutside_r (node_t *node)
{
 if (node->planenum != PLANENUM_LEAF)
 {
  FillOutside_r (node->children[0]);
  FillOutside_r (node->children[1]);
  return;
 }


 if (!node->occupied)
 {
  if (!(node->contents & CONTENTS_SOLID))
  {
   c_outside++;
   node->contents |= CONTENTS_SOLID;
  }
  else
  {
   c_solid++;
  }
 }
 else
 {
  c_inside++;
 }
}
