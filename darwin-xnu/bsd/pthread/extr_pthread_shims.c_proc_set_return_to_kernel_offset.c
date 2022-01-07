
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct proc {int p_return_to_kernel_offset; } ;



__attribute__((used)) static void
proc_set_return_to_kernel_offset(struct proc *p, uint64_t offset)
{
 p->p_return_to_kernel_offset = offset;
}
