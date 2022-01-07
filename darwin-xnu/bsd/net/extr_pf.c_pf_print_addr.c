
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct pf_addr {int * addr16; int * addr32; } ;
typedef int sa_family_t ;




 int ntohl (int ) ;
 int ntohs (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pf_print_addr(struct pf_addr *addr, sa_family_t af)
{
 switch (af) {
 }
}
