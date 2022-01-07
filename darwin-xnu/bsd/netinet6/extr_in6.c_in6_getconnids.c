
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
struct socket {int so_state; } ;
struct in6pcb {scalar_t__ inp_state; } ;
typedef int sae_connid_t ;
typedef scalar_t__ sae_associd_t ;
typedef int cid ;


 int EINVAL ;
 scalar_t__ INPCB_STATE_DEAD ;
 scalar_t__ SAE_ASSOCID_ALL ;
 scalar_t__ SAE_ASSOCID_ANY ;
 int SAE_CONNID_ANY ;
 int SS_ISCONNECTED ;
 int USER_ADDR_NULL ;
 int copyout (int*,int ,int) ;
 struct in6pcb* sotoin6pcb (struct socket*) ;

__attribute__((used)) static int
in6_getconnids(struct socket *so, sae_associd_t aid, uint32_t *cnt,
    user_addr_t cidp)
{
 struct in6pcb *in6p = sotoin6pcb(so);
 sae_connid_t cid;

 if (in6p == ((void*)0) || in6p->inp_state == INPCB_STATE_DEAD)
  return (EINVAL);

 if (aid != SAE_ASSOCID_ANY && aid != SAE_ASSOCID_ALL)
  return (EINVAL);


 *cnt = ((so->so_state & SS_ISCONNECTED) ? 1 : 0);


 if (cidp == USER_ADDR_NULL)
  return (0);


 cid = ((*cnt != 0) ? 1 : SAE_CONNID_ANY);

 return (copyout(&cid, cidp, sizeof (cid)));
}
