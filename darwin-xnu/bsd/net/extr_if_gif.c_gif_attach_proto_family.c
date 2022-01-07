
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_attach_proto_param {int input; } ;
typedef int reg ;
typedef int protocol_family_t ;
typedef int ifnet_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ EEXIST ;
 int bzero (struct ifnet_attach_proto_param*,int) ;
 int gif_input ;
 scalar_t__ ifnet_attach_protocol (int ,int,struct ifnet_attach_proto_param*) ;
 int printf (char*,int) ;

__attribute__((used)) static errno_t
gif_attach_proto_family(
 ifnet_t ifp,
 protocol_family_t protocol_family)
{
 struct ifnet_attach_proto_param reg;
 errno_t stat;

 bzero(&reg, sizeof (reg));
 reg.input = gif_input;

 stat = ifnet_attach_protocol(ifp, protocol_family, &reg);
 if (stat && stat != EEXIST) {
  printf("gif_attach_proto_family can't attach interface			    fam=%d\n", protocol_family);

 }

 return (stat);
}
