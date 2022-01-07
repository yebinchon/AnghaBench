
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct proc {int p_csflags; } ;


 int CS_ENTITLEMENT_FLAGS ;

uint32_t
cs_entitlement_flags(struct proc *p)
{
 return (p->p_csflags & CS_ENTITLEMENT_FLAGS);
}
