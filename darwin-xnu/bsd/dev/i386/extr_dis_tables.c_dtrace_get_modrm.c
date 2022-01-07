
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_4__ {int d86_got_modrm; int d86_rmindex; int d86_len; } ;
typedef TYPE_1__ dis86_t ;


 int dtrace_get_SIB (TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static void
dtrace_get_modrm(dis86_t *x, uint_t *mode, uint_t *reg, uint_t *r_m)
{
 if (x->d86_got_modrm == 0) {
  if (x->d86_rmindex == -1)
   x->d86_rmindex = x->d86_len;
  dtrace_get_SIB(x, mode, reg, r_m);
  x->d86_got_modrm = 1;
 }
}
