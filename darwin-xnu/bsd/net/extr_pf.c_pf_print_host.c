
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct pf_addr {int dummy; } ;
typedef int sa_family_t ;


 int ntohs (scalar_t__) ;
 int pf_print_addr (struct pf_addr*,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void
pf_print_host(struct pf_addr *addr, u_int16_t p, sa_family_t af)
{
 pf_print_addr(addr, af);
 if (p)
  printf("[%u]", ntohs(p));
}
