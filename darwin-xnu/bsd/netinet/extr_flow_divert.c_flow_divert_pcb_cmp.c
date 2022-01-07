
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_divert_pcb {int hash; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline int
flow_divert_pcb_cmp(const struct flow_divert_pcb *pcb_a, const struct flow_divert_pcb *pcb_b)
{
 return memcmp(&pcb_a->hash, &pcb_b->hash, sizeof(pcb_a->hash));
}
