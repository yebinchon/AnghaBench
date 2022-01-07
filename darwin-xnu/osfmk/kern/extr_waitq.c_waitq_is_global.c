
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;


 int g_num_waitqs ;
 struct waitq* global_waitqs ;

int waitq_is_global(struct waitq *waitq)
{
 if (waitq >= global_waitqs && waitq < global_waitqs + g_num_waitqs)
  return 1;
 return 0;
}
