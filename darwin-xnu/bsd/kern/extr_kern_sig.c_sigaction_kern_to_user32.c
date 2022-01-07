
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int __sa_handler; } ;
struct user32_sigaction {int sa_flags; int sa_mask; TYPE_1__ __sigaction_u; } ;
struct TYPE_4__ {int __sa_handler; } ;
struct kern_sigaction {int sa_flags; int sa_mask; TYPE_2__ __sigaction_u; } ;


 int CAST_DOWN_EXPLICIT (int ,int ) ;
 int user32_addr_t ;

__attribute__((used)) static void
sigaction_kern_to_user32(struct kern_sigaction *in, struct user32_sigaction *out)
{

 out->__sigaction_u.__sa_handler = CAST_DOWN_EXPLICIT(user32_addr_t,in->__sigaction_u.__sa_handler);
 out->sa_mask = in->sa_mask;
 out->sa_flags = in->sa_flags;
}
