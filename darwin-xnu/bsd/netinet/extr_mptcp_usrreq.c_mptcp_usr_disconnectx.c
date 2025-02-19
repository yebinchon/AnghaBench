
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef scalar_t__ sae_connid_t ;
typedef scalar_t__ sae_associd_t ;


 int EINVAL ;
 scalar_t__ SAE_ASSOCID_ALL ;
 scalar_t__ SAE_ASSOCID_ANY ;
 scalar_t__ SAE_CONNID_ALL ;
 scalar_t__ SAE_CONNID_ANY ;
 int mptcp_usr_disconnect (struct socket*) ;

__attribute__((used)) static int
mptcp_usr_disconnectx(struct socket *mp_so, sae_associd_t aid, sae_connid_t cid)
{
 if (aid != SAE_ASSOCID_ANY && aid != SAE_ASSOCID_ALL)
  return (EINVAL);

 if (cid != SAE_CONNID_ANY && cid != SAE_CONNID_ALL)
  return (EINVAL);

 return (mptcp_usr_disconnect(mp_so));
}
