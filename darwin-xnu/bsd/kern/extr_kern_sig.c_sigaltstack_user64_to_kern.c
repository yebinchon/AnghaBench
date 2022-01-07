
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user64_sigaltstack {int ss_sp; int ss_size; int ss_flags; } ;
struct kern_sigaltstack {int ss_sp; int ss_size; int ss_flags; } ;



__attribute__((used)) static void
sigaltstack_user64_to_kern(struct user64_sigaltstack *in, struct kern_sigaltstack *out)
{
 out->ss_flags = in->ss_flags;
 out->ss_size = in->ss_size;
 out->ss_sp = in->ss_sp;
}
