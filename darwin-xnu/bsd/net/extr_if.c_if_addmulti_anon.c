
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {int dummy; } ;


 int if_addmulti_common (struct ifnet*,struct sockaddr const*,struct ifmultiaddr**,int) ;

int
if_addmulti_anon(struct ifnet *ifp, const struct sockaddr *sa,
    struct ifmultiaddr **retifma)
{
 return (if_addmulti_common(ifp, sa, retifma, 1));
}
