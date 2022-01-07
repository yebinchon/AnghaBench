
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int * nodes; int onnode; } ;
typedef TYPE_1__ portal_t ;


 int CONTENTS_DETAIL ;
 int CONTENTS_Q2TRANSLUCENT ;
 int CONTENTS_SOLID ;
 int ClusterContents (int ) ;
 int VisibleContents (int) ;

qboolean Portal_VisFlood (portal_t *p)
{
 int c1, c2;

 if (!p->onnode)
  return 0;

 c1 = ClusterContents(p->nodes[0]);
 c2 = ClusterContents(p->nodes[1]);

 if (!VisibleContents (c1^c2))
  return 1;

 if (c1 & (CONTENTS_Q2TRANSLUCENT|CONTENTS_DETAIL))
  c1 = 0;
 if (c2 & (CONTENTS_Q2TRANSLUCENT|CONTENTS_DETAIL))
  c2 = 0;

 if ( (c1|c2) & CONTENTS_SOLID )
  return 0;

 if (! (c1 ^ c2))
  return 1;

 if (!VisibleContents (c1^c2))
  return 1;
 return 0;
}
