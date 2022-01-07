
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int winding; } ;
typedef TYPE_1__ side_t ;
typedef scalar_t__ qboolean ;
struct TYPE_5__ {int numsides; TYPE_1__* sides; struct TYPE_5__* next; } ;
typedef TYPE_2__ bspbrush_t ;
typedef int FILE ;


 int OutputWinding (int ,int *) ;
 int SFL_VISIBLE ;
 int * SafeOpenWrite (char*) ;
 int fclose (int *) ;
 int qprintf (char*,char*) ;

void WriteBrushList (char *name, bspbrush_t *brush, qboolean onlyvis)
{
 int i;
 side_t *s;
 FILE *f;

 qprintf ("writing %s\n", name);
 f = SafeOpenWrite (name);

 for ( ; brush ; brush=brush->next)
 {
  for (i=0 ; i<brush->numsides ; i++)
  {
   s = &brush->sides[i];
   if (!s->winding)
    continue;
   if (onlyvis && !(s->flags & SFL_VISIBLE))
    continue;
   OutputWinding (brush->sides[i].winding, f);
  }
 }

 fclose (f);
}
