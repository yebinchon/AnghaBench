
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int dummy; } ;



int
pfi_kif_match(struct pfi_kif *rule_kif, struct pfi_kif *packet_kif)
{

 if (rule_kif == ((void*)0) || rule_kif == packet_kif)
  return (1);

 return (0);
}
