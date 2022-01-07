
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ t; scalar_t__ s; } ;
typedef TYPE_1__ TESSvertex ;
typedef scalar_t__ TESSreal ;


 scalar_t__ TransLeq (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;

TESSreal testransSign( TESSvertex *u, TESSvertex *v, TESSvertex *w )
{




 TESSreal gapL, gapR;

 assert( TransLeq( u, v ) && TransLeq( v, w ));

 gapL = v->t - u->t;
 gapR = w->t - v->t;

 if( gapL + gapR > 0 ) {
  return (v->s - w->s) * gapL + (v->s - u->s) * gapR;
 }

 return 0;
}
