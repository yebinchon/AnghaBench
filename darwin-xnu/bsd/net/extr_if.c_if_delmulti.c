
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifnet {int dummy; } ;


 int if_delmulti_common (int *,struct ifnet*,struct sockaddr const*,int ) ;

int
if_delmulti(struct ifnet *ifp, const struct sockaddr *sa)
{
 return (if_delmulti_common(((void*)0), ifp, sa, 0));
}
