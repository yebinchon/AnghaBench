
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Rface; } ;
struct TYPE_4__ {int n; int inside; } ;
typedef int TESSindex ;
typedef TYPE_2__ TESShalfEdge ;


 int TESS_UNDEF ;

__attribute__((used)) static TESSindex GetNeighbourFace(TESShalfEdge* edge)
{
 if (!edge->Rface)
  return TESS_UNDEF;
 if (!edge->Rface->inside)
  return TESS_UNDEF;
 return edge->Rface->n;
}
