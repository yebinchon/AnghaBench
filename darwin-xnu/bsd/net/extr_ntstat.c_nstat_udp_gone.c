
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nstat_tucookie {struct inpcb* inp; } ;
struct inpcb {scalar_t__ inp_state; } ;
typedef scalar_t__ nstat_provider_cookie_t ;


 scalar_t__ INPCB_STATE_DEAD ;

__attribute__((used)) static int
nstat_udp_gone(
 nstat_provider_cookie_t cookie)
{
 struct nstat_tucookie *tucookie =
     (struct nstat_tucookie *)cookie;
 struct inpcb *inp;

 return (!(inp = tucookie->inp) ||
  inp->inp_state == INPCB_STATE_DEAD) ? 1 : 0;
}
