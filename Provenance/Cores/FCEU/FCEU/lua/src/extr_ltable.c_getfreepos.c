
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ node; int * lastfree; } ;
typedef TYPE_1__ Table ;
typedef int Node ;


 int gkey (int *) ;
 scalar_t__ ttisnil (int ) ;

__attribute__((used)) static Node *getfreepos (Table *t) {
  while (t->lastfree-- > t->node) {
    if (ttisnil(gkey(t->lastfree)))
      return t->lastfree;
  }
  return ((void*)0);
}
