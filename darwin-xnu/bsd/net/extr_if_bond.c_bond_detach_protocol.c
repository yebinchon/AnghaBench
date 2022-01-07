
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int PF_BOND ;
 int ifnet_detach_protocol (struct ifnet*,int ) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int printf (char*,char*,int,int) ;

__attribute__((used)) static int
bond_detach_protocol(struct ifnet *ifp)
{
    int error;

    error = ifnet_detach_protocol(ifp, PF_BOND);
    if (error) {
 printf("bond over %s%d: ifnet_detach_protocol failed, %d\n",
        ifnet_name(ifp), ifnet_unit(ifp), error);
    }
    return (error);
}
