
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_5__ {scalar_t__ winding; } ;


 int FreeWinding (scalar_t__) ;
 int c_active_brushes ;
 int free (TYPE_2__*) ;
 int numthreads ;

void FreeBrush (bspbrush_t *brushes)
{
 int i;

 for (i=0 ; i<brushes->numsides ; i++)
  if (brushes->sides[i].winding)
   FreeWinding(brushes->sides[i].winding);
 free (brushes);
 if (numthreads == 1)
  c_active_brushes--;
}
