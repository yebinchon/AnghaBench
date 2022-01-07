
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_2__ {struct proc* handler_proc; } ;


 int NSPACE_HANDLER_COUNT ;
 TYPE_1__* nspace_handlers ;

__attribute__((used)) static inline int nspace_is_special_process(struct proc *proc)
{
 int i;
 for (i = 0; i < NSPACE_HANDLER_COUNT; i++) {
  if (proc == nspace_handlers[i].handler_proc)
   return 1;
 }
 return 0;
}
