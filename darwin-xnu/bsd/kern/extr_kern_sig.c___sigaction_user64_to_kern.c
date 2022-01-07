
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int __sa_handler; } ;
struct __user64_sigaction {int sa_flags; int sa_mask; int sa_tramp; TYPE_2__ __sigaction_u; } ;
struct TYPE_3__ {int __sa_handler; } ;
struct __kern_sigaction {int sa_tramp; int sa_flags; int sa_mask; TYPE_1__ __sigaction_u; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 int current_thread () ;
 scalar_t__ machine_thread_function_pointers_convert_from_user (int ,int *,int) ;

__attribute__((used)) static void
__sigaction_user64_to_kern(struct __user64_sigaction *in, struct __kern_sigaction *out)
{
 out->__sigaction_u.__sa_handler = in->__sigaction_u.__sa_handler;
 out->sa_tramp = in->sa_tramp;
 out->sa_mask = in->sa_mask;
 out->sa_flags = in->sa_flags;

 kern_return_t kr;
 kr = machine_thread_function_pointers_convert_from_user(current_thread(),
   &out->sa_tramp, 1);
 assert(kr == KERN_SUCCESS);
}
