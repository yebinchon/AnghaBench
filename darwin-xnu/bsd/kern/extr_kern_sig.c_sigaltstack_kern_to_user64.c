
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user64_sigaltstack {int ss_flags; int ss_size; int ss_sp; } ;
struct kern_sigaltstack {int ss_flags; int ss_size; int ss_sp; } ;



__attribute__((used)) static void
sigaltstack_kern_to_user64(struct kern_sigaltstack *in, struct user64_sigaltstack *out)
{
 out->ss_sp = in->ss_sp;
 out->ss_size = in->ss_size;
 out->ss_flags = in->ss_flags;
}
