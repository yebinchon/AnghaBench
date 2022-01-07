
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_addr {int * addr32; } ;
typedef int sa_family_t ;





__attribute__((used)) static __inline int
pf_addr_compare(struct pf_addr *a, struct pf_addr *b, sa_family_t af)
{
 switch (af) {
 }
 return (0);
}
