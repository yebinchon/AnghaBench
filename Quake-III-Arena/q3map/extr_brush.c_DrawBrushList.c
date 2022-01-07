
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {int numsides; TYPE_1__* sides; struct TYPE_5__* next; } ;
typedef TYPE_2__ bspbrush_t ;


 int GLS_BeginScene () ;
 int GLS_EndScene () ;
 int GLS_Winding (int ,int ) ;

void DrawBrushList (bspbrush_t *brush)
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
   GLS_Winding (s->winding, 0);
  }
 }
 GLS_EndScene ();
}
