
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uio {int dummy; } ;
struct socket {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_sosend_list_notsupp(struct socket *so, struct uio **uio,
    u_int uiocnt, int flags)
{
#pragma unused(so, uio, uiocnt, flags)
 return (EOPNOTSUPP);
}
