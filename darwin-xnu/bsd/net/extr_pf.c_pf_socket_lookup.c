
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_8__ {int gid; int uid; int pid; } ;
struct TYPE_7__ {TYPE_2__* udp; TYPE_1__* tcp; } ;
struct pf_pdesc {int proto; int af; TYPE_4__ lookup; struct pf_addr* src; struct pf_addr* dst; TYPE_3__ hdr; } ;
struct in6_addr {int * s6_addr32; void** s6_addr16; } ;
struct pf_addr {struct in6_addr v6addr; int v4addr; } ;
struct inpcbinfo {int dummy; } ;
typedef int s6 ;
typedef int d6 ;
struct TYPE_6__ {int uh_dport; int uh_sport; } ;
struct TYPE_5__ {int th_dport; int th_sport; } ;




 int GID_MAX ;
 int INPLOOKUP_WILDCARD ;


 int NO_PID ;
 int PF_IN ;
 int UID_MAX ;
 void* htons (int) ;
 int in6_pcblookup_hash_exists (struct inpcbinfo*,struct in6_addr*,int ,struct in6_addr*,int ,int ,int *,int *,int *) ;
 int in_pcblookup_hash_exists (struct inpcbinfo*,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int memcpy (int *,int *,int) ;
 int memset (struct in6_addr*,int ,int) ;
 struct inpcbinfo tcbinfo ;
 struct inpcbinfo udbinfo ;

int
pf_socket_lookup(int direction, struct pf_pdesc *pd)
{
 struct pf_addr *saddr, *daddr;
 u_int16_t sport, dport;
 struct inpcbinfo *pi;
 int inp = 0;

 if (pd == ((void*)0))
  return (-1);
 pd->lookup.uid = UID_MAX;
 pd->lookup.gid = GID_MAX;
 pd->lookup.pid = NO_PID;

 switch (pd->proto) {
 case 129:
  if (pd->hdr.tcp == ((void*)0))
   return (-1);
  sport = pd->hdr.tcp->th_sport;
  dport = pd->hdr.tcp->th_dport;
  pi = &tcbinfo;
  break;
 case 128:
  if (pd->hdr.udp == ((void*)0))
   return (-1);
  sport = pd->hdr.udp->uh_sport;
  dport = pd->hdr.udp->uh_dport;
  pi = &udbinfo;
  break;
 default:
  return (-1);
 }
 if (direction == PF_IN) {
  saddr = pd->src;
  daddr = pd->dst;
 } else {
  u_int16_t p;

  p = sport;
  sport = dport;
  dport = p;
  saddr = pd->dst;
  daddr = pd->src;
 }
 switch (pd->af) {
 default:
  return (-1);
 }

 return (1);
}
