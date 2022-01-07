
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; int * ocap; } ;
typedef int Capture ;
typedef TYPE_1__ CapState ;


 int assert (int) ;
 int * findopen (int *) ;
 scalar_t__ isclosecap (int *) ;
 int isfullcap (int *) ;
 int luaL_error (int ,char*,int) ;

__attribute__((used)) static Capture *findback (CapState *cs, Capture *cap, int n) {
  int i;
  for (i = 0; i < n; i++) {
    if (cap == cs->ocap)
      luaL_error(cs->L, "invalid back reference (%d)", n);
    cap--;
    if (isclosecap(cap))
      cap = findopen(cap);
    else if (!isfullcap(cap))
      i--;
  }
  assert(!isclosecap(cap));
  return cap;
}
