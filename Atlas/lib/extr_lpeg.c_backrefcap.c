
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cap; } ;
struct TYPE_8__ {int idx; } ;
typedef TYPE_1__ Capture ;
typedef TYPE_2__ CapState ;


 TYPE_1__* findback (TYPE_2__*,TYPE_1__*,int) ;
 int pushcapture (TYPE_2__*) ;

__attribute__((used)) static int backrefcap (CapState *cs) {
  int n = (cs->cap)->idx;
  Capture *curr = cs->cap;
  Capture *backref = findback(cs, curr, n);
  cs->cap = backref;
  n = pushcapture(cs);
  cs->cap = curr + 1;
  return n;
}
