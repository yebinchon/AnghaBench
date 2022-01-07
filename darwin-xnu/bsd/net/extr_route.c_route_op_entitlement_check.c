
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct socket {int dummy; } ;
typedef int * kauth_cred_t ;
typedef int boolean_t ;


 int PRIV_NET_RESTRICTED_ROUTE_NC_READ ;
 int ROUTE_OP_READ ;
 scalar_t__ kauth_cred_getuid (int *) ;
 scalar_t__ priv_check_cred (int *,int ,int ) ;
 scalar_t__ soopt_cred_check (struct socket*,int ,int ) ;

int
route_op_entitlement_check(struct socket *so,
    kauth_cred_t cred,
    int route_op_type,
    boolean_t allow_root)
{
 if (so != ((void*)0)) {
  if (route_op_type == ROUTE_OP_READ) {





   if (soopt_cred_check(so, PRIV_NET_RESTRICTED_ROUTE_NC_READ,
       allow_root) == 0)
    return (0);
   else
    return (-1);
  }
 } else if (cred != ((void*)0)) {
  uid_t uid = kauth_cred_getuid(cred);


  if (uid != 0 || !allow_root) {
   if (route_op_type == ROUTE_OP_READ) {
    if (priv_check_cred(cred,
        PRIV_NET_RESTRICTED_ROUTE_NC_READ, 0) == 0)
     return (0);
    else
     return (-1);
   }
  }
 }
 return (-1);
}
