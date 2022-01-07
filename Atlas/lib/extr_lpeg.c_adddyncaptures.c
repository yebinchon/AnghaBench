
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int siz; int idx; char const* s; } ;
typedef TYPE_1__ Capture ;


 scalar_t__ Cclose ;
 scalar_t__ Cruntime ;
 int assert (int) ;

__attribute__((used)) static void adddyncaptures (const char *s, Capture *base, int n, int fd) {
  int i;
  assert(base[0].kind == Cruntime && base[0].siz == 0);
  base[0].idx = fd;
  for (i = 1; i < n; i++) {
    base[i].siz = 1;
    base[i].s = s;
    base[i].kind = Cruntime;
    base[i].idx = fd + i;
  }
  base[n].kind = Cclose;
  base[n].siz = 1;
  base[n].s = s;
}
