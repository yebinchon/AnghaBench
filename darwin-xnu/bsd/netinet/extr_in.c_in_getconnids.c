
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
struct socket {int so_state; } ;
struct inpcb {scalar_t__ inp_state; } ;
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
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
in_getconnids(struct socket *so, sae_associd_t aid, uint32_t *cnt,
    user_addr_t cidp)
{
 struct inpcb *inp = sotoinpcb(so);
 sae_connid_t cid;

 if (inp == ((void*)0) || inp->inp_state == INPCB_STATE_DEAD)
  return (EINVAL);

 if (aid != SAE_ASSOCID_ANY && aid != SAE_ASSOCID_ALL)
  return (EINVAL);


 *cnt = ((so->so_state & SS_ISCONNECTED) ? 1 : 0);


 if (cidp == USER_ADDR_NULL)
  return (0);


 cid = ((*cnt != 0) ? 1 : SAE_CONNID_ANY);

 return (copyout(&cid, cidp, sizeof (cid)));
}
