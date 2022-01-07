
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ifnet_detach (struct ifnet*) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int printf (char*,char*,int,int) ;

__attribute__((used)) static void
bond_if_detach(struct ifnet * ifp)
{
    int error;

    error = ifnet_detach(ifp);
    if (error) {
 printf("bond_if_detach %s%d: ifnet_detach failed, %d\n",
        ifnet_name(ifp), ifnet_unit(ifp), error);
    }

    return;
}
