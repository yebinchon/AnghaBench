
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_char ;
struct mbuf {int m_len; } ;
struct ip6_hdr {int ip6_nxt; int ip6_plen; } ;
struct ip6_fw {scalar_t__ fw_ip6opt; scalar_t__ fw_ip6nopt; } ;
struct ip6_frag {int ip6f_offlg; } ;
struct ip6_ext {int ip6e_nxt; int ip6e_len; } ;
typedef scalar_t__ caddr_t ;


 int IP6F_OFF_MASK ;







 scalar_t__ IPV6_FW_IP6OPT_AH ;
 scalar_t__ IPV6_FW_IP6OPT_ESP ;
 scalar_t__ IPV6_FW_IP6OPT_FRAG ;
 scalar_t__ IPV6_FW_IP6OPT_HOPOPT ;
 scalar_t__ IPV6_FW_IP6OPT_NONXT ;
 scalar_t__ IPV6_FW_IP6OPT_OPTS ;
 scalar_t__ IPV6_FW_IP6OPT_ROUTE ;
 int ntohs (int ) ;

__attribute__((used)) static int
ip6opts_match(struct ip6_hdr **pip6, struct ip6_fw *f, struct mbuf **m,
       int *off, int *nxt, u_short *offset)
{
 int len;
 struct ip6_hdr *ip6 = *pip6;
 struct ip6_ext *ip6e;
 u_char opts, nopts, nopts_sve;

 opts = f->fw_ip6opt;
 nopts = nopts_sve = f->fw_ip6nopt;

 *nxt = ip6->ip6_nxt;
 *off = sizeof(struct ip6_hdr);
 len = ntohs(ip6->ip6_plen) + sizeof(struct ip6_hdr);
 while (*off < len) {
  ip6e = (struct ip6_ext *)((caddr_t) ip6 + *off);
  if ((*m)->m_len < *off + sizeof(*ip6e))
   goto opts_check;

  switch(*nxt) {
  case 131:
   if ((*m)->m_len >= *off + sizeof(struct ip6_frag)) {
    struct ip6_frag *ip6f;

    ip6f = (struct ip6_frag *) ((caddr_t)ip6 + *off);
    *offset = ip6f->ip6f_offlg & IP6F_OFF_MASK;
   }
   opts &= ~IPV6_FW_IP6OPT_FRAG;
   nopts &= ~IPV6_FW_IP6OPT_FRAG;
   *off += sizeof(struct ip6_frag);
   break;
  case 134:
   opts &= ~IPV6_FW_IP6OPT_AH;
   nopts &= ~IPV6_FW_IP6OPT_AH;
   *off += (ip6e->ip6e_len + 2) << 2;
   break;
  default:
   switch (*nxt) {
   case 130:
    opts &= ~IPV6_FW_IP6OPT_HOPOPT;
    nopts &= ~IPV6_FW_IP6OPT_HOPOPT;
    break;
   case 128:
    opts &= ~IPV6_FW_IP6OPT_ROUTE;
    nopts &= ~IPV6_FW_IP6OPT_ROUTE;
    break;
   case 132:
    opts &= ~IPV6_FW_IP6OPT_ESP;
    nopts &= ~IPV6_FW_IP6OPT_ESP;
    break;
   case 129:
    opts &= ~IPV6_FW_IP6OPT_NONXT;
    nopts &= ~IPV6_FW_IP6OPT_NONXT;
    goto opts_check;
    break;
   case 133:
    opts &= ~IPV6_FW_IP6OPT_OPTS;
    nopts &= ~IPV6_FW_IP6OPT_OPTS;
    break;
   default:
    goto opts_check;
    break;
   }
   *off += (ip6e->ip6e_len + 1) << 3;
   break;
  }
  *nxt = ip6e->ip6e_nxt;

 }
 opts_check:
 if (f->fw_ip6opt == f->fw_ip6nopt)
  return 1;

 if (opts == 0 && nopts == nopts_sve)
  return 1;
 else
  return 0;
}
