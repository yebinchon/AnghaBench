
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_attach_proto_param {int detached; int event; int input; } ;
struct ifnet {int dummy; } ;
typedef int reg ;


 int PF_BOND ;
 int bond_detached ;
 int bond_event ;
 int bond_input ;
 int bzero (struct ifnet_attach_proto_param*,int) ;
 int ifnet_attach_protocol (struct ifnet*,int ,struct ifnet_attach_proto_param*) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int printf (char*,char*,int,int) ;

__attribute__((used)) static int
bond_attach_protocol(struct ifnet *ifp)
{
    int error;
    struct ifnet_attach_proto_param reg;

    bzero(&reg, sizeof(reg));
    reg.input = bond_input;
    reg.event = bond_event;
    reg.detached = bond_detached;

    error = ifnet_attach_protocol(ifp, PF_BOND, &reg);
    if (error) {
 printf("bond over %s%d: ifnet_attach_protocol failed, %d\n",
        ifnet_name(ifp), ifnet_unit(ifp), error);
    }
    return (error);
}
