
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef scalar_t__ uint32_t ;
struct socket {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;
typedef int sae_associd_t ;
typedef int aid ;


 int EINVAL ;
 scalar_t__ INPCB_STATE_DEAD ;
 int SAE_ASSOCID_ANY ;
 int USER_ADDR_NULL ;
 int copyout (int *,int ,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
in_getassocids(struct socket *so, uint32_t *cnt, user_addr_t aidp)
{
 struct inpcb *inp = sotoinpcb(so);
 sae_associd_t aid;

 if (inp == ((void*)0) || inp->inp_state == INPCB_STATE_DEAD)
  return (EINVAL);


 aid = SAE_ASSOCID_ANY;
 *cnt = 0;


 if (aidp == USER_ADDR_NULL)
  return (0);

 return (copyout(&aid, aidp, sizeof (aid)));
}
