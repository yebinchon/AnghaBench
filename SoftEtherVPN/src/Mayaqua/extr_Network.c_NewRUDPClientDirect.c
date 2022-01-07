
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int TargetIpAndPortInited; int DoNotSetTargetConnectedSock; int Lock; int * TargetConnectedSock; int TargetConnectedEvent; int SockEvent; scalar_t__ TargetPort; int TargetIp; } ;
typedef int SOCK_EVENT ;
typedef int SOCK ;
typedef TYPE_1__ RUDP_STACK ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int Disconnect (int *) ;
 int FreeRUDP (TYPE_1__*) ;
 int Lock (int ) ;
 TYPE_1__* NewRUDP (int,char*,int *,int *,int *,scalar_t__,int *,int *,int,int,int *,int *,int ,int *) ;
 scalar_t__ RUDP_ERROR_OK ;
 scalar_t__ RUDP_ERROR_TIMEOUT ;
 scalar_t__ RUDP_ERROR_UNKNOWN ;
 scalar_t__ RUDP_ERROR_USER_CANCELED ;
 scalar_t__ RUDP_TIMEOUT ;
 int ReleaseSock (int *) ;
 int SetSockEvent (int ) ;
 int Unlock (int ) ;
 int WaitEx (int ,scalar_t__,int*) ;

SOCK *NewRUDPClientDirect(char *svc_name, IP *ip, UINT port, UINT *error_code, UINT timeout, bool *cancel, SOCK *sock, SOCK_EVENT *sock_event, UINT local_port, bool over_dns_mode)
{
 RUDP_STACK *r;
 UINT dummy_int = 0;
 SOCK *ret = ((void*)0);

 if (error_code == ((void*)0))
 {
  error_code = &dummy_int;
 }
 if (timeout == 0)
 {
  timeout = RUDP_TIMEOUT;
 }
 *error_code = RUDP_ERROR_UNKNOWN;
 if (svc_name == ((void*)0) || ip == ((void*)0) || port == 0)
 {
  return ((void*)0);
 }

 r = NewRUDP(0, svc_name, ((void*)0), ((void*)0), ((void*)0), local_port, sock, sock_event, 0, over_dns_mode, ip, ((void*)0), 0, ((void*)0));
 if (r == ((void*)0))
 {
  *error_code = RUDP_ERROR_UNKNOWN;
  return ((void*)0);
 }


 Lock(r->Lock);
 {
  Copy(&r->TargetIp, ip, sizeof(IP));
  r->TargetPort = port;
  r->TargetIpAndPortInited = 1;
 }
 Unlock(r->Lock);
 SetSockEvent(r->SockEvent);


 WaitEx(r->TargetConnectedEvent, timeout, cancel);
 Lock(r->Lock);
 {
  if (r->TargetConnectedSock != ((void*)0))
  {

   ret = r->TargetConnectedSock;
   r->TargetConnectedSock = ((void*)0);
  }
  else
  {
   r->DoNotSetTargetConnectedSock = 1;
  }
 }
 Unlock(r->Lock);

 if (ret == ((void*)0))
 {

  *error_code = RUDP_ERROR_TIMEOUT;
  FreeRUDP(r);
 }
 else if (cancel != ((void*)0) && (*cancel))
 {

  *error_code = RUDP_ERROR_USER_CANCELED;

  Disconnect(ret);
  ReleaseSock(ret);

  ret = ((void*)0);
 }
 else
 {
  *error_code = RUDP_ERROR_OK;
 }

 return ret;
}
