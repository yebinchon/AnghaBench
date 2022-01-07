
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfi_kif {char* pfik_name; } ;
struct pf_state_key {int proto; int proto_variant; int af_gwy; int ext_gwy; int af_lan; int ext_lan; int gwy; int lan; } ;
struct pf_state {int sync_flags; struct pf_state_key* state_key; } ;
struct TYPE_2__ {scalar_t__ debug; } ;






 int PFSTATE_FROMSYNC ;
 scalar_t__ PF_DEBUG_MISC ;
 int pf_print_sk_host (int *,int ,int,int ) ;
 TYPE_1__ pf_status ;
 int printf (char*,...) ;

__attribute__((used)) static void
pf_stateins_err(const char *tree, struct pf_state *s, struct pfi_kif *kif)
{
 struct pf_state_key *sk = s->state_key;

 if (pf_status.debug >= PF_DEBUG_MISC) {
  printf("pf: state insert failed: %s %s ", tree, kif->pfik_name);
  switch (sk->proto) {
  case 129:
   printf("TCP");
   break;
  case 128:
   printf("UDP");
   break;
  case 131:
   printf("ICMP4");
   break;
  case 130:
   printf("ICMP6");
   break;
  default:
   printf("PROTO=%u", sk->proto);
   break;
  }
  printf(" lan: ");
  pf_print_sk_host(&sk->lan, sk->af_lan, sk->proto,
      sk->proto_variant);
  printf(" gwy: ");
  pf_print_sk_host(&sk->gwy, sk->af_gwy, sk->proto,
      sk->proto_variant);
  printf(" ext_lan: ");
  pf_print_sk_host(&sk->ext_lan, sk->af_lan, sk->proto,
      sk->proto_variant);
  printf(" ext_gwy: ");
  pf_print_sk_host(&sk->ext_gwy, sk->af_gwy, sk->proto,
      sk->proto_variant);
  if (s->sync_flags & PFSTATE_FROMSYNC)
   printf(" (from sync)");
  printf("\n");
 }
}
