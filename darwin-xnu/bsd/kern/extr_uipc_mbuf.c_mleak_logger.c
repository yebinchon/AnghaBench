
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int mcache_obj_t ;
typedef int boolean_t ;
struct TYPE_2__ {int mleak_sample_factor; int mleak_capture; } ;


 int MLEAK_STACK_DEPTH ;
 int atomic_add_32_ov (int *,int) ;
 int backtrace (uintptr_t*,int) ;
 scalar_t__ mclfindleak ;
 void mleak_free (int *) ;
 int mleak_log (uintptr_t*,int *,int,int ) ;
 TYPE_1__ mleak_table ;

__attribute__((used)) static void
mleak_logger(u_int32_t num, mcache_obj_t *addr, boolean_t alloc)
{
 int temp;

 if (mclfindleak == 0)
  return;

 if (!alloc)
  return (mleak_free(addr));

 temp = atomic_add_32_ov(&mleak_table.mleak_capture, 1);

 if ((temp % mleak_table.mleak_sample_factor) == 0 && addr != ((void*)0)) {
  uintptr_t bt[MLEAK_STACK_DEPTH];
  int logged = backtrace(bt, MLEAK_STACK_DEPTH);
  mleak_log(bt, addr, logged, num);
 }
}
