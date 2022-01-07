
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ s; scalar_t__ t; } ;
typedef TYPE_1__ TESSvertex ;
typedef scalar_t__ TESSreal ;


 scalar_t__ VertLeq (TYPE_1__*,TYPE_1__*) ;

TESSreal tesedgeSign( TESSvertex *u, TESSvertex *v, TESSvertex *w )
{




 TESSreal gapL, gapR;


 if( ! ( VertLeq( u, v ) && VertLeq( v, w )) )
  return 0;

 gapL = v->s - u->s;
 gapR = w->s - v->s;

 if( gapL + gapR > 0 ) {
  return (v->t - w->t) * gapL + (v->t - u->t) * gapR;
 }

 return 0;
}
