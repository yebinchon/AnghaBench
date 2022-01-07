
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* regnode; TYPE_3__** wildcard; } ;
struct TYPE_10__ {TYPE_2__ x; } ;
struct TYPE_8__ {unsigned int mask; size_t set; } ;
typedef TYPE_3__* Symbol ;


 TYPE_3__* askfixedreg (TYPE_3__*) ;

__attribute__((used)) static Symbol askreg(Symbol rs, unsigned rmask[]) {
 int i;

 if (rs->x.wildcard == ((void*)0))
  return askfixedreg(rs);
 for (i = 31; i >= 0; i--) {
  Symbol r = rs->x.wildcard[i];
  if (r != ((void*)0)
  && !(r->x.regnode->mask&~rmask[r->x.regnode->set])
  && askfixedreg(r))
   return r;
 }
 return ((void*)0);
}
