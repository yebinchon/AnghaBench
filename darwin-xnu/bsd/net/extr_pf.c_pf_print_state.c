
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pf_state_key {int proto; int proto_variant; int af_gwy; int ext_gwy; int af_lan; int ext_lan; int gwy; int lan; } ;
struct TYPE_4__ {int wscale; int seqlo; int seqhi; int max_win; int seqdiff; int state; } ;
struct TYPE_3__ {int seqlo; int seqhi; int max_win; int seqdiff; int wscale; int state; } ;
struct pf_state {TYPE_2__ dst; TYPE_1__ src; struct pf_state_key* state_key; } ;
 int PF_WSCALE_MASK ;
 int pf_print_sk_host (int *,int ,int,int) ;
 int printf (char*,...) ;

void
pf_print_state(struct pf_state *s)
{
 struct pf_state_key *sk = s->state_key;
 switch (sk->proto) {
 case 133:
  printf("ESP ");
  break;
 case 132:
  printf("GRE%u ", sk->proto_variant);
  break;
 case 129:
  printf("TCP ");
  break;
 case 128:
  printf("UDP ");
  break;
 case 131:
  printf("ICMP ");
  break;
 case 130:
  printf("ICMPV6 ");
  break;
 default:
  printf("%u ", sk->proto);
  break;
 }
 pf_print_sk_host(&sk->lan, sk->af_lan, sk->proto, sk->proto_variant);
 printf(" ");
 pf_print_sk_host(&sk->gwy, sk->af_gwy, sk->proto, sk->proto_variant);
 printf(" ");
 pf_print_sk_host(&sk->ext_lan, sk->af_lan, sk->proto,
    sk->proto_variant);
 printf(" ");
 pf_print_sk_host(&sk->ext_gwy, sk->af_gwy, sk->proto,
    sk->proto_variant);
 printf(" [lo=%u high=%u win=%u modulator=%u", s->src.seqlo,
     s->src.seqhi, s->src.max_win, s->src.seqdiff);
 if (s->src.wscale && s->dst.wscale)
  printf(" wscale=%u", s->src.wscale & PF_WSCALE_MASK);
 printf("]");
 printf(" [lo=%u high=%u win=%u modulator=%u", s->dst.seqlo,
     s->dst.seqhi, s->dst.max_win, s->dst.seqdiff);
 if (s->src.wscale && s->dst.wscale)
  printf(" wscale=%u", s->dst.wscale & PF_WSCALE_MASK);
 printf("]");
 printf(" %u:%u", s->src.state, s->dst.state);
}
