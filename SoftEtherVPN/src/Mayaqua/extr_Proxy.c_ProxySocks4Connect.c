
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tmp ;
typedef int target_port ;
typedef int recv_buf ;
typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_16__ {int Size; int Buf; } ;
struct TYPE_15__ {int* addr; } ;
struct TYPE_14__ {scalar_t__ Port; scalar_t__ TargetPort; scalar_t__ Timeout; int* Username; int TargetHostname; int Hostname; } ;
struct TYPE_13__ {int * Sock; int ResolvedIp; } ;
typedef int SOCK ;
typedef TYPE_1__ PROXY_PARAM_OUT ;
typedef TYPE_2__ PROXY_PARAM_IN ;
typedef TYPE_3__ IP ;
typedef TYPE_4__ BUF ;


 int Disconnect (int *) ;
 int Endian16 (scalar_t__) ;
 int FreeBuf (TYPE_4__*) ;
 int GetIP (TYPE_3__*,int ) ;
 scalar_t__ INFINITE ;
 int * Internal_ProxyTcpConnect (TYPE_2__*,int volatile*,int *) ;
 scalar_t__ IsEmptyStr (int ) ;
 scalar_t__ MIN (int ,scalar_t__) ;
 TYPE_4__* NewBuf () ;
 int PROXY_CONNECTION_TIMEOUT ;
 int PROXY_ERROR_AUTHENTICATION ;
 int PROXY_ERROR_CANCELED ;
 int PROXY_ERROR_CONNECTION ;
 int PROXY_ERROR_DISCONNECTED ;
 int PROXY_ERROR_GENERIC ;
 int PROXY_ERROR_PARAMETER ;
 int PROXY_ERROR_SUCCESS ;
 int PROXY_ERROR_TARGET ;
 int RecvAll (int *,int*,int,int) ;
 int ReleaseSock (int *) ;
 int SendAll (int *,int ,int ,int) ;
 int SetTimeout (int *,scalar_t__) ;
 int StrLen (int*) ;
 int WriteBuf (TYPE_4__*,int*,int) ;
 int Zero (TYPE_1__*,int) ;

UINT ProxySocks4Connect(PROXY_PARAM_OUT *out, PROXY_PARAM_IN *in, volatile bool *cancel_flag)
{
 bool dummy_cancel_flag = 0;
 UCHAR tmp, recv_buf[8];
 USHORT target_port;
 IP target_ip;
 UINT ret;
 SOCK *s;
 BUF *b;

 if (out == ((void*)0) || in == ((void*)0) || in->Port == 0 || in->TargetPort == 0 || IsEmptyStr(in->Hostname) || IsEmptyStr(in->TargetHostname))
 {
  return PROXY_ERROR_PARAMETER;
 }

 if (cancel_flag == ((void*)0))
 {
  cancel_flag = &dummy_cancel_flag;
 }
 else if (*cancel_flag)
 {
  return PROXY_ERROR_CANCELED;
 }

 Zero(out, sizeof(PROXY_PARAM_OUT));


 if (GetIP(&target_ip, in->TargetHostname) == 0)
 {
  return PROXY_ERROR_CONNECTION;
 }


 s = Internal_ProxyTcpConnect(in, cancel_flag, &out->ResolvedIp);
 if (s == ((void*)0))
 {
  return PROXY_ERROR_CONNECTION;
 }

 SetTimeout(s, MIN(PROXY_CONNECTION_TIMEOUT, (in->Timeout == 0 ? INFINITE : in->Timeout)));


 b = NewBuf();
 tmp = 4;
 WriteBuf(b, &tmp, sizeof(tmp));
 tmp = 1;
 WriteBuf(b, &tmp, sizeof(tmp));
 target_port = Endian16(in->TargetPort);
 WriteBuf(b, &target_port, sizeof(target_port));
 WriteBuf(b, target_ip.addr, sizeof(target_ip.addr));
 WriteBuf(b, in->Username, StrLen(in->Username) + 1);

 ret = SendAll(s, b->Buf, b->Size, 0);

 FreeBuf(b);

 if (ret == 0)
 {
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }


 if (RecvAll(s, recv_buf, sizeof(recv_buf), 0) == 0)
 {
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }

 if (recv_buf[0] != 0)
 {
  ret = PROXY_ERROR_GENERIC;
  goto FAILURE;
 }

 switch (recv_buf[1])
 {
 case 90:

  SetTimeout(s, INFINITE);
  out->Sock = s;
  return PROXY_ERROR_SUCCESS;
 case 93:

  ret = PROXY_ERROR_AUTHENTICATION;
  goto FAILURE;
 default:

  ret = PROXY_ERROR_TARGET;
 }

FAILURE:
 Disconnect(s);
 ReleaseSock(s);
 return ret;
}
