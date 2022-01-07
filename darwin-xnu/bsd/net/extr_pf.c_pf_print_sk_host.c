
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_2__ {int port; int call_id; int spi; } ;
struct pf_state_host {TYPE_1__ xport; int addr; } ;
typedef int sa_family_t ;






 int PF_GRE_PPTP_VARIANT ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pf_print_addr (int *,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void
pf_print_sk_host(struct pf_state_host *sh, sa_family_t af, int proto,
 u_int8_t proto_variant)
{
 pf_print_addr(&sh->addr, af);

 switch (proto) {
 case 131:
  if (sh->xport.spi)
   printf("[%08x]", ntohl(sh->xport.spi));
  break;

 case 130:
  if (proto_variant == PF_GRE_PPTP_VARIANT)
   printf("[%u]", ntohs(sh->xport.call_id));
  break;

 case 129:
 case 128:
  printf("[%u]", ntohs(sh->xport.port));
  break;

 default:
  break;
 }
}
