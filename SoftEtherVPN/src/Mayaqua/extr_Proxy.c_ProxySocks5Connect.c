
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int tmp ;
typedef int target_port ;
typedef int recv_buf ;
typedef int dest_length ;
typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_19__ {int Size; int Buf; } ;
struct TYPE_18__ {int* ipv6_addr; int* addr; } ;
struct TYPE_17__ {scalar_t__ Port; scalar_t__ TargetPort; int* Hostname; int* TargetHostname; scalar_t__ Timeout; int* Username; int* Password; } ;
struct TYPE_16__ {int * Sock; int ResolvedIp; } ;
typedef int SOCK ;
typedef TYPE_1__ PROXY_PARAM_OUT ;
typedef TYPE_2__ PROXY_PARAM_IN ;
typedef TYPE_3__ IP ;
typedef TYPE_4__ BUF ;


 int ClearBuf (TYPE_4__*) ;
 int Debug (char*,...) ;
 int Disconnect (int *) ;
 int Endian16 (scalar_t__) ;
 int Free (int*) ;
 int FreeBuf (TYPE_4__*) ;
 scalar_t__ INFINITE ;
 int * Internal_ProxyTcpConnect (TYPE_2__*,int volatile*,int *) ;
 scalar_t__ IsEmptyStr (int*) ;
 scalar_t__ IsIP6 (TYPE_3__*) ;
 scalar_t__ IsZeroIp (TYPE_3__*) ;
 scalar_t__ MIN (int ,scalar_t__) ;
 int* Malloc (int) ;
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
 int PROXY_ERROR_VERSION ;
 int* ReAlloc (int*,int) ;
 int RecvAll (int *,int*,int,int) ;
 int ReleaseSock (int *) ;
 int SendAll (int *,int ,int ,int) ;
 int SetTimeout (int *,scalar_t__) ;
 int StrLen (int*) ;
 int StrToIP (TYPE_3__*,int*) ;
 int WriteBuf (TYPE_4__*,int*,int) ;
 int Zero (TYPE_1__*,int) ;

UINT ProxySocks5Connect(PROXY_PARAM_OUT *out, PROXY_PARAM_IN *in, volatile bool *cancel_flag)
{
 bool dummy_cancel_flag = 0;
 UCHAR tmp, recv_buf[2], *recv_buf_final;
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


 s = Internal_ProxyTcpConnect(in, cancel_flag, &out->ResolvedIp);
 if (s == ((void*)0))
 {
  return PROXY_ERROR_CONNECTION;
 }

 SetTimeout(s, MIN(PROXY_CONNECTION_TIMEOUT, (in->Timeout == 0 ? INFINITE : in->Timeout)));
 b = NewBuf();
 tmp = 5;
 WriteBuf(b, &tmp, sizeof(tmp));
 tmp = 2;
 WriteBuf(b, &tmp, sizeof(tmp));
 tmp = 0;
 WriteBuf(b, &tmp, sizeof(tmp));
 tmp = 2;
 WriteBuf(b, &tmp, sizeof(tmp));

 ret = SendAll(s, b->Buf, b->Size, 0);

 if (ret == 0)
 {
  FreeBuf(b);
  Debug("ProxySocks5Connect(): [Phase 1] Failed to send initial data to the server.\n");
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }







 if (RecvAll(s, recv_buf, sizeof(recv_buf), 0) == 0)
 {
  FreeBuf(b);
  Debug("ProxySocks5Connect(): [Phase 1] Failed to receive initial data response from the server.\n");
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }

 if (recv_buf[0] != 5)
 {
  FreeBuf(b);
  Debug("ProxySocks5Connect(): [Phase 1] Unmatching version: %u.\n", recv_buf[0]);
  ret = PROXY_ERROR_VERSION;
  goto FAILURE;
 }

 ClearBuf(b);


 if (recv_buf[1] == 2)
 {






  tmp = 1;
  WriteBuf(b, &tmp, sizeof(tmp));
  tmp = StrLen(in->Username);
  WriteBuf(b, &tmp, sizeof(tmp));
  WriteBuf(b, in->Username, tmp);
  tmp = StrLen(in->Password);
  WriteBuf(b, &tmp, sizeof(tmp));
  WriteBuf(b, in->Password, tmp);

  ret = SendAll(s, b->Buf, b->Size, 0);

  ClearBuf(b);

  if (ret == 0)
  {
   Debug("ProxySocks5Connect(): [Phase 1] Failed to send authentication data to the server.\n");
   ret = PROXY_ERROR_DISCONNECTED;
   goto FAILURE;
  }







  if (RecvAll(s, recv_buf, sizeof(recv_buf), 0) == 0)
  {
   Debug("ProxySocks5Connect(): [Phase 1] Failed to receive authentication data response from the server.\n");
   ret = PROXY_ERROR_DISCONNECTED;
   goto FAILURE;
  }

  if (recv_buf[1] != 0)
  {
   Debug("ProxySocks5Connect(): [Phase 1] Authentication failure, error code sent by the server: %u.\n", recv_buf[1]);
   ret = PROXY_ERROR_AUTHENTICATION;
   goto FAILURE;
  }
 }
 tmp = 5;
 WriteBuf(b, &tmp, sizeof(tmp));
 tmp = 1;
 WriteBuf(b, &tmp, sizeof(tmp));
 tmp = 0;
 WriteBuf(b, &tmp, sizeof(tmp));


 StrToIP(&target_ip, in->TargetHostname);


 if (IsZeroIp(&target_ip))
 {
  UCHAR dest_length = StrLen(in->TargetHostname);
  tmp = 3;
  WriteBuf(b, &tmp, sizeof(tmp));
  WriteBuf(b, &dest_length, sizeof(dest_length));
  WriteBuf(b, in->TargetHostname, dest_length);
 }
 else
 {
  if (IsIP6(&target_ip))
  {
   tmp = 4;
   WriteBuf(b, &tmp, sizeof(tmp));
   WriteBuf(b, target_ip.ipv6_addr, sizeof(target_ip.ipv6_addr));
  }
  else
  {
   tmp = 1;
   WriteBuf(b, &tmp, sizeof(tmp));
   WriteBuf(b, target_ip.addr, sizeof(target_ip.addr));
  }
 }


 target_port = Endian16(in->TargetPort);
 WriteBuf(b, &target_port, sizeof(target_port));


 ret = SendAll(s, b->Buf, b->Size, 0);
 FreeBuf(b);

 if (ret == 0)
 {
  Debug("ProxySocks5Connect(): [Phase 2] Failed to send data to the server.\n");
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }
 recv_buf_final = Malloc(4);

 if (RecvAll(s, recv_buf_final, 4, 0) == 0)
 {
  Free(recv_buf_final);
  Debug("ProxySocks5Connect(): [Phase 2] Failed to receive response from the server.\n");
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }


 recv_buf[0] = recv_buf_final[0];
 recv_buf[1] = recv_buf_final[1];


 switch (recv_buf_final[3])
 {
 case 1:

  recv_buf_final = ReAlloc(recv_buf_final, 6);
  ret = RecvAll(s, recv_buf_final, 6, 0);
  break;
 case 4:

  recv_buf_final = ReAlloc(recv_buf_final, 18);
  ret = RecvAll(s, recv_buf_final, 18, 0);
  break;
 case 3:

  ret = RecvAll(s, &tmp, 1, 0);
  if (ret == 1)
  {
   recv_buf_final = ReAlloc(recv_buf_final, tmp + 2);
   ret = RecvAll(s, recv_buf_final, tmp + 2, 0);
  }
 }

 Free(recv_buf_final);

 if (ret == 0)
 {
  Debug("ProxySocks5Connect(): [Phase 2] Malformed response received from the server.\n");
  ret = PROXY_ERROR_DISCONNECTED;
  goto FAILURE;
 }

 if (recv_buf[0] != 5)
 {
  Debug("ProxySocks5Connect(): [Phase 2] Unmatching version: %u.\n", recv_buf_final[0]);
  ret = PROXY_ERROR_VERSION;
  goto FAILURE;
 }

 switch (recv_buf[1])
 {
 case 0:

  SetTimeout(s, INFINITE);
  out->Sock = s;
  return PROXY_ERROR_SUCCESS;
 case 3:
 case 4:
 case 5:
  Debug("ProxySocks5Connect(): [Phase 2] Connection to target failed with error: %u\n", recv_buf[1]);
  ret = PROXY_ERROR_TARGET;
  goto FAILURE;
 default:
  Debug("ProxySocks5Connect(): [Phase 2] Connection failed with error: %u\n", recv_buf[1]);
  ret = PROXY_ERROR_GENERIC;
  goto FAILURE;
 }

FAILURE:
 Disconnect(s);
 ReleaseSock(s);
 return ret;
}
