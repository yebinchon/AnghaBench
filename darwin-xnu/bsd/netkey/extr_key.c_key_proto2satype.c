
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;





 int SADB_SATYPE_AH ;
 int SADB_SATYPE_ESP ;
 int SADB_X_SATYPE_IPCOMP ;

__attribute__((used)) static u_int8_t
key_proto2satype(
     u_int16_t proto)
{
 switch (proto) {
  case 130:
   return SADB_SATYPE_AH;
  case 129:
   return SADB_SATYPE_ESP;
  case 128:
   return SADB_X_SATYPE_IPCOMP;
  default:
   return 0;
 }

}
