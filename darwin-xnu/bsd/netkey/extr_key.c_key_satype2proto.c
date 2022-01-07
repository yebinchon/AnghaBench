
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 int IPPROTO_AH ;
 int IPPROTO_ESP ;
 int IPPROTO_IPCOMP ;
 int IPSEC_PROTO_ANY ;





__attribute__((used)) static u_int16_t
key_satype2proto(
     u_int8_t satype)
{
 switch (satype) {
  case 129:
   return IPSEC_PROTO_ANY;
  case 131:
   return IPPROTO_AH;
  case 130:
   return IPPROTO_ESP;
  case 128:
   return IPPROTO_IPCOMP;
  default:
   return 0;
 }

}
