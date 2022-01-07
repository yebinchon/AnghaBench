
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int sae_connid_t ;
typedef int sae_associd_t ;


 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int sodisconnectxlocked (struct socket*,int ,int ) ;

int
sodisconnectx(struct socket *so, sae_associd_t aid, sae_connid_t cid)
{
 int error;

 socket_lock(so, 1);
 error = sodisconnectxlocked(so, aid, cid);
 socket_unlock(so, 1);
 return (error);
}
