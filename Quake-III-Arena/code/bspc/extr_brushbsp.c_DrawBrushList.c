
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ texinfo; int flags; int winding; } ;
typedef TYPE_1__ side_t ;
typedef int node_t ;
struct TYPE_5__ {int numsides; TYPE_1__* sides; struct TYPE_5__* next; } ;
typedef TYPE_2__ bspbrush_t ;


 int GLS_BeginScene () ;
 int GLS_EndScene () ;
 int GLS_Winding (int ,int) ;
 int SFL_VISIBLE ;
 scalar_t__ TEXINFO_NODE ;

void DrawBrushList (bspbrush_t *brush, node_t *node)
{
 int i;
 side_t *s;

 GLS_BeginScene ();
 for ( ; brush ; brush=brush->next)
 {
  for (i=0 ; i<brush->numsides ; i++)
  {
   s = &brush->sides[i];
   if (!s->winding)
    continue;
   if (s->texinfo == TEXINFO_NODE)
    GLS_Winding (s->winding, 1);
   else if (!(s->flags & SFL_VISIBLE))
    GLS_Winding (s->winding, 2);
   else
    GLS_Winding (s->winding, 0);
  }
 }
 GLS_EndScene ();
}
