
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_attach_proto_param {int pre_output; int input; } ;
typedef int protocol_family_t ;
typedef int proto ;
typedef int ifnet_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ EEXIST ;
 int bzero (struct ifnet_attach_proto_param*,int) ;
 scalar_t__ ifnet_attach_protocol (int ,int,struct ifnet_attach_proto_param*) ;
 int printf (char*,int,scalar_t__) ;
 int utun_proto_input ;
 int utun_proto_pre_output ;

__attribute__((used)) static errno_t
utun_attach_proto(ifnet_t interface,
      protocol_family_t protocol)
{
 struct ifnet_attach_proto_param proto;

 bzero(&proto, sizeof(proto));
 proto.input = utun_proto_input;
 proto.pre_output = utun_proto_pre_output;

 errno_t result = ifnet_attach_protocol(interface, protocol, &proto);
 if (result != 0 && result != EEXIST) {
  printf("utun_attach_inet - ifnet_attach_protocol %d failed: %d\n",
   protocol, result);
 }

 return result;
}
