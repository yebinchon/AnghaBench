
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_attach_proto_param {int detached; int event; int input; } ;
struct ifnet {int dummy; } ;
typedef int reg ;


 int PF_VLAN ;
 int bzero (struct ifnet_attach_proto_param*,int) ;
 int ifnet_attach_protocol (struct ifnet*,int ,struct ifnet_attach_proto_param*) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int printf (char*,char*,int,int) ;
 int vlan_detached ;
 int vlan_event ;
 int vlan_input ;

__attribute__((used)) static int
vlan_attach_protocol(struct ifnet *ifp)
{
    int error;
    struct ifnet_attach_proto_param reg;

    bzero(&reg, sizeof(reg));
    reg.input = vlan_input;
    reg.event = vlan_event;
    reg.detached = vlan_detached;
    error = ifnet_attach_protocol(ifp, PF_VLAN, &reg);
    if (error) {
 printf("vlan_proto_attach(%s%d) ifnet_attach_protocol failed, %d\n",
        ifnet_name(ifp), ifnet_unit(ifp), error);
    }
    return (error);
}
