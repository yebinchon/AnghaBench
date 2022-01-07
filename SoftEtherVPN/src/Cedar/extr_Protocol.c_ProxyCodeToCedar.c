
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int ERR_CONNECT_FAILED ;
 int ERR_DISCONNECTED ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int ERR_PROXY_AUTH_FAILED ;
 int ERR_PROXY_CONNECT_FAILED ;
 int ERR_PROXY_ERROR ;
 int ERR_USER_CANCEL ;
UINT ProxyCodeToCedar(UINT code)
{
 switch (code)
 {
 case 130:
  return ERR_NO_ERROR;
 case 131:
 case 128:
  return ERR_PROXY_ERROR;
 case 134:
  return ERR_USER_CANCEL;
 case 133:
  return ERR_PROXY_CONNECT_FAILED;
 case 129:
  return ERR_CONNECT_FAILED;
 case 132:
  return ERR_DISCONNECTED;
 case 135:
  return ERR_PROXY_AUTH_FAILED;
 default:
  return ERR_INTERNAL_ERROR;
 }
}
