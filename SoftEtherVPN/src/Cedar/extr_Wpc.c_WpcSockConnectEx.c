
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int in ;
struct TYPE_12__ {int ProxyType; int CustomHttpHeader; int ProxyPassword; int ProxyUsername; int ProxyPort; int ProxyHostName; int Port; int HostName; } ;
typedef TYPE_1__ WPC_CONNECT ;
typedef int UINT ;
struct TYPE_14__ {int Timeout; int HttpCustomHeader; int Password; int Username; int Port; int Hostname; int TargetPort; int TargetHostname; } ;
struct TYPE_13__ {int * Sock; } ;
typedef int SOCK ;
typedef TYPE_2__ PROXY_PARAM_OUT ;
typedef TYPE_3__ PROXY_PARAM_IN ;


 int Debug (char*,int) ;
 int ERR_CONNECT_FAILED ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int PROXY_DIRECT ;



 int ProxyCodeToCedar (int) ;
 int ProxyHttpConnect (TYPE_2__*,TYPE_3__*,int*) ;
 int ProxySocks4Connect (TYPE_2__*,TYPE_3__*,int*) ;
 int ProxySocks5Connect (TYPE_2__*,TYPE_3__*,int*) ;
 int StrCpy (int ,int,int ) ;
 int * TcpConnectEx3 (int ,int ,int,int*,int *,int,int *,int,int *) ;
 int Zero (TYPE_3__*,int) ;

SOCK *WpcSockConnectEx(WPC_CONNECT *param, UINT *error_code, UINT timeout, bool *cancel)
{
 SOCK *sock;
 UINT ret;

 if (param == ((void*)0))
 {
  return ((void*)0);
 }

 if (error_code == ((void*)0))
 {
  error_code = &ret;
 }

 if (param->ProxyType == PROXY_DIRECT)
 {
  sock = TcpConnectEx3(param->HostName, param->Port, timeout, cancel, ((void*)0), 1, ((void*)0), 0, ((void*)0));
  *error_code = (sock != ((void*)0) ? ERR_NO_ERROR : ERR_CONNECT_FAILED);
  return sock;
 }
 else
 {
  PROXY_PARAM_OUT out;
  PROXY_PARAM_IN in;
  UINT ret;

  Zero(&in, sizeof(in));

  in.Timeout = timeout;

  StrCpy(in.TargetHostname, sizeof(in.TargetHostname), param->HostName);
  in.TargetPort = param->Port;

  StrCpy(in.Hostname, sizeof(in.Hostname), param->ProxyHostName);
  in.Port = param->ProxyPort;

  StrCpy(in.Username, sizeof(in.Username), param->ProxyUsername);
  StrCpy(in.Password, sizeof(in.Password), param->ProxyPassword);

  StrCpy(in.HttpCustomHeader, sizeof(in.HttpCustomHeader), param->CustomHttpHeader);

  switch (param->ProxyType)
  {
  case 130:
   ret = ProxyHttpConnect(&out, &in, cancel);
   break;
  case 129:
   ret = ProxySocks4Connect(&out, &in, cancel);
   break;
  case 128:
   ret = ProxySocks5Connect(&out, &in, cancel);
   break;
  default:
   *error_code = ERR_INTERNAL_ERROR;
   Debug("WpcSockConnect(): Unknown proxy type: %u!\n", param->ProxyType);
   return ((void*)0);
  }

  *error_code = ProxyCodeToCedar(ret);

  if (*error_code != ERR_NO_ERROR)
  {
   Debug("ClientConnectGetSocket(): Connection via proxy server failed with error %u\n", ret);
   return ((void*)0);
  }

  return out.Sock;
 }
}
