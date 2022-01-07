
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int sae_connid_t ;
typedef int sae_associd_t ;


 int EOPNOTSUPP ;

int
pru_disconnectx_notsupp(struct socket *so, sae_associd_t aid, sae_connid_t cid)
{
#pragma unused(so, aid, cid)
 return (EOPNOTSUPP);
}
