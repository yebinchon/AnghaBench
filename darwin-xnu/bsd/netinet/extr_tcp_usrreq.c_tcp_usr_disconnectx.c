
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int sae_connid_t ;
typedef scalar_t__ sae_associd_t ;


 int EINVAL ;
 scalar_t__ SAE_ASSOCID_ALL ;
 scalar_t__ SAE_ASSOCID_ANY ;
 int tcp_usr_disconnect (struct socket*) ;

__attribute__((used)) static int
tcp_usr_disconnectx(struct socket *so, sae_associd_t aid, sae_connid_t cid)
{
#pragma unused(cid)
 if (aid != SAE_ASSOCID_ANY && aid != SAE_ASSOCID_ALL)
  return (EINVAL);

 return (tcp_usr_disconnect(so));
}
