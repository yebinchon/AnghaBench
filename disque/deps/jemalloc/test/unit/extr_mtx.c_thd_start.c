
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtx; int x; } ;
typedef TYPE_1__ thd_start_arg_t ;


 unsigned int NINCRS ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void *
thd_start(void *varg)
{
 thd_start_arg_t *arg = (thd_start_arg_t *)varg;
 unsigned i;

 for (i = 0; i < NINCRS; i++) {
  mtx_lock(&arg->mtx);
  arg->x++;
  mtx_unlock(&arg->mtx);
 }
 return (((void*)0));
}
