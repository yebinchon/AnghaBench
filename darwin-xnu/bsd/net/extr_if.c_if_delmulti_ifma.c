
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmultiaddr {int dummy; } ;


 int if_delmulti_common (struct ifmultiaddr*,int *,int *,int ) ;

int
if_delmulti_ifma(struct ifmultiaddr *ifma)
{
 return (if_delmulti_common(ifma, ((void*)0), ((void*)0), 0));
}
