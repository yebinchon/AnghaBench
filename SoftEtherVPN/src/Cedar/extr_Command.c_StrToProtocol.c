
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int INFINITE ;
 int IP_PROTO_ICMPV4 ;
 int IP_PROTO_ICMPV6 ;
 int IP_PROTO_TCP ;
 int IP_PROTO_UDP ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int ToInt (char*) ;

UINT StrToProtocol(char *str)
{
 if (IsEmptyStr(str))
 {
  return 0;
 }

 if (StartWith("ip", str))
 {
  return 0;
 }
 else if (StartWith("tcp", str))
 {
  return IP_PROTO_TCP;
 }
 else if (StartWith("udp", str))
 {
  return IP_PROTO_UDP;
 }
 else if (StartWith("icmpv4", str))
 {
  return IP_PROTO_ICMPV4;
 }
 else if (StartWith("icmpv6", str))
 {
  return IP_PROTO_ICMPV6;
 }

 if (ToInt(str) == 0)
 {
  if (StrCmpi(str, "0") == 0)
  {
   return 0;
  }
  else
  {
   return INFINITE;
  }
 }

 if (ToInt(str) >= 256)
 {
  return INFINITE;
 }

 return ToInt(str);
}
