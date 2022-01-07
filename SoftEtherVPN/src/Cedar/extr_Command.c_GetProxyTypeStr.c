
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;





 int * _UU (char*) ;

wchar_t *GetProxyTypeStr(UINT i)
{
 switch (i)
 {
 case 130:

  return _UU("PROTO_DIRECT_TCP");

 case 129:
  return _UU("PROTO_HTTP_PROXY");

 case 128:
  return _UU("PROTO_SOCKS_PROXY");

 default:
  return _UU("PROTO_UNKNOWN");
 }
}
