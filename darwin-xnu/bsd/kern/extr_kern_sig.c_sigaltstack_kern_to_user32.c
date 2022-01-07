
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user32_sigaltstack {int ss_flags; void* ss_size; void* ss_sp; } ;
struct kern_sigaltstack {int ss_flags; int ss_size; int ss_sp; } ;


 void* CAST_DOWN_EXPLICIT (int ,int ) ;
 int user32_addr_t ;
 int user32_size_t ;

__attribute__((used)) static void
sigaltstack_kern_to_user32(struct kern_sigaltstack *in, struct user32_sigaltstack *out)
{
 out->ss_sp = CAST_DOWN_EXPLICIT(user32_addr_t, in->ss_sp);
 out->ss_size = CAST_DOWN_EXPLICIT(user32_size_t, in->ss_size);
 out->ss_flags = in->ss_flags;
}
