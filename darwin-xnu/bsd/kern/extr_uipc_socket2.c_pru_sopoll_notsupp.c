
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int kauth_cred_t ;


 int EOPNOTSUPP ;

int
pru_sopoll_notsupp(struct socket *so, int events, kauth_cred_t cred, void *wql)
{
#pragma unused(so, events, cred, wql)
 return (EOPNOTSUPP);
}
