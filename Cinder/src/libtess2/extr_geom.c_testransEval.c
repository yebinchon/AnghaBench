
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t; int s; } ;
typedef TYPE_1__ TESSvertex ;
typedef int TESSreal ;


 scalar_t__ TransLeq (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;

TESSreal testransEval( TESSvertex *u, TESSvertex *v, TESSvertex *w )
{
 TESSreal gapL, gapR;

 assert( TransLeq( u, v ) && TransLeq( v, w ));

 gapL = v->t - u->t;
 gapR = w->t - v->t;

 if( gapL + gapR > 0 ) {
  if( gapL < gapR ) {
   return (v->s - u->s) + (u->s - w->s) * (gapL / (gapL + gapR));
  } else {
   return (v->s - w->s) + (w->s - u->s) * (gapR / (gapL + gapR));
  }
 }

 return 0;
}
