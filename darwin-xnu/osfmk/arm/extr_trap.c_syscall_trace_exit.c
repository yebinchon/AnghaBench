
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf (char*,unsigned int,unsigned int) ;

void
syscall_trace_exit(
     unsigned int r0,
     unsigned int r1)
{
 kprintf("syscall exit: 0x%x 0x%x\n", r0, r1);
}
