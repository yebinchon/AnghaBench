
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_14__ {int IgnoreRecvErr; int LocalPort; } ;
struct TYPE_13__ {TYPE_1__* Server; } ;
struct TYPE_12__ {TYPE_4__* Sock; TYPE_3__* Cedar; scalar_t__ Halt; int Status; int Event; int Port; } ;
struct TYPE_11__ {int ListenIP; } ;
typedef int SOCKSET ;
typedef TYPE_2__ LISTENER ;
typedef int IP ;


 int AddSockSet (int *,TYPE_4__*) ;
 int Debug (char*,...) ;
 int Disconnect (TYPE_4__*) ;
 int Free (int *) ;
 int InitSockSet (int *) ;
 int LISTENER_STATUS_LISTENING ;
 int LISTENER_STATUS_TRYING ;
 int LISTEN_RETRY_TIME ;
 int * Malloc (int ) ;
 TYPE_4__* NewUDPEx2 (int ,int,int *) ;
 scalar_t__ RecvFrom (TYPE_4__*,int *,scalar_t__*,int *,int ) ;
 int ReleaseSock (TYPE_4__*) ;
 int SELECT_TIME ;
 scalar_t__ SOCK_LATER ;
 int Select (int *,int ,int *,int *) ;
 int UDPReceivedPacket (TYPE_3__*,TYPE_4__*,int *,scalar_t__,int *,scalar_t__) ;
 int UDP_PACKET_SIZE ;
 int Wait (int ,int ) ;

void ListenerUDPMainLoop(LISTENER *r)
{
 UCHAR *data;

 if (r == ((void*)0))
 {
  return;
 }

 Debug("ListenerUDPMainLoop Starts.\n");
 r->Status = LISTENER_STATUS_TRYING;

 while (1)
 {

  while (1)
  {

   if (r->Halt)
   {

    return;
   }

   Debug("NewUDP()\n");
   r->Sock = NewUDPEx2(r->Port, 0, &r->Cedar->Server->ListenIP);
   if (r->Sock != ((void*)0))
   {

    break;
   }


   Debug("Failed to NewUDP.\n");
   Wait(r->Event, LISTEN_RETRY_TIME);


   if (r->Halt)
   {
    Debug("UDP Halt.\n");
    return;
   }
  }

  r->Status = LISTENER_STATUS_LISTENING;
  Debug("Start Listening at UDP Port %u.\n", r->Sock->LocalPort);


  if (r->Halt)
  {

   goto STOP;
  }


  data = Malloc(UDP_PACKET_SIZE);


  while (1)
  {
   IP src_ip;
   UINT src_port;
   UINT size;
   SOCKSET set;

   InitSockSet(&set);
   AddSockSet(&set, r->Sock);
   Select(&set, SELECT_TIME, ((void*)0), ((void*)0));

   size = RecvFrom(r->Sock, &src_ip, &src_port, data, UDP_PACKET_SIZE);
   if (((size == 0) && (r->Sock->IgnoreRecvErr == 0)) || r->Halt)
   {

STOP:
    Disconnect(r->Sock);
    ReleaseSock(r->Sock);
    r->Sock = ((void*)0);
    Debug("UDP Listen Stopped.\n");
    Free(data);
    break;
   }


   if (size != SOCK_LATER)
   {
    UDPReceivedPacket(r->Cedar, r->Sock, &src_ip, src_port, data, size);
   }
  }
 }
}
