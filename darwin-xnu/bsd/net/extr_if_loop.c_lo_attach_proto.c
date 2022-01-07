
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_attach_proto_param_v2 {int pre_output; int input; } ;
struct ifnet {int dummy; } ;
typedef int protocol_family_t ;
typedef int proto ;
typedef scalar_t__ errno_t ;


 scalar_t__ EEXIST ;
 int bzero (struct ifnet_attach_proto_param_v2*,int) ;
 scalar_t__ ifnet_attach_protocol_v2 (struct ifnet*,int,struct ifnet_attach_proto_param_v2*) ;
 int lo_input ;
 int lo_pre_output ;
 int printf (char*,int,scalar_t__) ;

__attribute__((used)) static errno_t
lo_attach_proto(struct ifnet *ifp, protocol_family_t protocol_family)
{
 struct ifnet_attach_proto_param_v2 proto;
 errno_t result = 0;

 bzero(&proto, sizeof (proto));
 proto.input = lo_input;
 proto.pre_output = lo_pre_output;

 result = ifnet_attach_protocol_v2(ifp, protocol_family, &proto);

 if (result && result != EEXIST) {
  printf("lo_attach_proto: ifnet_attach_protocol for %u "
      "returned=%d\n", protocol_family, result);
 }

 return (result);
}
