
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n; int * p; } ;
typedef TYPE_1__ ZIO ;


 scalar_t__ EOZ ;
 int char2int (int ) ;
 scalar_t__ luaZ_fill (TYPE_1__*) ;

int luaZ_lookahead (ZIO *z) {
  if (z->n == 0) {
    if (luaZ_fill(z) == EOZ)
      return EOZ;
    else {
      z->n++;
      z->p--;
    }
  }
  return char2int(*z->p);
}
