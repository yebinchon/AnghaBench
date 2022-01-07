
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ss_sp; } ;
struct TYPE_4__ {TYPE_1__ uc_stack; } ;
typedef TYPE_2__ ucontext_t ;
typedef scalar_t__ cothread_t ;


 int free (scalar_t__) ;

void co_delete(cothread_t cothread) {
  if(cothread) {
    if(((ucontext_t*)cothread)->uc_stack.ss_sp) { free(((ucontext_t*)cothread)->uc_stack.ss_sp); }
    free(cothread);
  }
}
