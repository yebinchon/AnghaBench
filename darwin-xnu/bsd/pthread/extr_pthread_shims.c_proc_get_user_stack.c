
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct proc {int user_stack; } ;



__attribute__((used)) static user_addr_t
proc_get_user_stack(struct proc *p)
{
 return p->user_stack;
}
