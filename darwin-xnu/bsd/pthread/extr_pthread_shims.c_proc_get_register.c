
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct proc {int p_lflag; } ;


 int P_LREGISTER ;

__attribute__((used)) static uint64_t
proc_get_register(struct proc *p) {
 return (p->p_lflag & P_LREGISTER);
}
