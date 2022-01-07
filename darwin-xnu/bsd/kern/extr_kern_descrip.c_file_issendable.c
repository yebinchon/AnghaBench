
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fileproc {int f_type; TYPE_1__* f_fglob; } ;
typedef int proc_t ;
typedef int boolean_t ;
struct TYPE_2__ {int fg_lflags; } ;







 int FALSE ;
 int FG_CONFINED ;
 int LCK_MTX_ASSERT_OWNED ;
 int proc_fdlock_assert (int ,int ) ;

boolean_t
file_issendable(proc_t p, struct fileproc *fp)
{
 proc_fdlock_assert(p, LCK_MTX_ASSERT_OWNED);

 switch (fp->f_type) {
 case 128:
 case 129:
 case 131:
 case 130:
 case 132:
  return (0 == (fp->f_fglob->fg_lflags & FG_CONFINED));
 default:

  return FALSE;
 }
}
