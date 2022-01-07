
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int s; } ;
struct TYPE_9__ {TYPE_3__* cap; int L; } ;
struct TYPE_8__ {int e; int s; } ;
typedef TYPE_1__ StrAux ;
typedef TYPE_2__ CapState ;


 scalar_t__ Csimple ;
 int MAXSTRCAPS ;
 scalar_t__ captype (TYPE_3__*) ;
 int closeaddr (TYPE_3__*) ;
 int isclosecap (TYPE_3__*) ;
 int isfullcap (int ) ;
 int luaL_error (int ,char*,int) ;

__attribute__((used)) static int getstrcaps (CapState *cs, StrAux *cps, int n) {
  int k = n++;
  if (k < MAXSTRCAPS) cps[k].s = cs->cap->s;
  if (!isfullcap(cs->cap++)) {
    while (!isclosecap(cs->cap)) {
      if (captype(cs->cap) != Csimple)
        return luaL_error(cs->L,
                          "invalid capture #%d in replacement pattern", n);
      n = getstrcaps(cs, cps, n);
    }
    cs->cap++;
  }
  if (k < MAXSTRCAPS) cps[k].e = closeaddr(cs->cap - 1);
  return n;
}
