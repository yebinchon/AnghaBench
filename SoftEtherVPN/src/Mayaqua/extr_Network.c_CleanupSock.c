
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ socket; int disconnect_lock; int ssl_lock; int lock; struct TYPE_9__* WaitToUseCipher; struct TYPE_9__* CipherName; int * LocalX; int * RemoteX; int * hAcceptEvent; struct TYPE_9__* RemoteHostname; int SendBuf; int * R_UDP_Stack; int * InProcRecvFifo; int * BulkRecvKey; int * BulkSendKey; int * BulkSendTube; int * BulkRecvTube; int * RecvTube; int * SendTube; int * ReverseAcceptEvent; int * ReverseAcceptQueue; int * InProcAcceptEvent; int * InProcAcceptQueue; } ;
typedef TYPE_1__ SOCK ;


 int CloseHandle (int *) ;
 int Dec (int ) ;
 int DeleteLock (int ) ;
 int Disconnect (TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int FreeRUDP (int *) ;
 int FreeX (int *) ;
 TYPE_1__* GetNext (int *) ;
 scalar_t__ INVALID_SOCKET ;
 int ReleaseEvent (int *) ;
 int ReleaseFifo (int *) ;
 int ReleaseQueue (int *) ;
 int ReleaseSharedBuffer (int *) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseTube (int *) ;
 int TubeDisconnect (int *) ;
 int UnixFreeAsyncSocket (TYPE_1__*) ;
 int Win32FreeAsyncSocket (TYPE_1__*) ;
 int close (scalar_t__) ;
 int closesocket (scalar_t__) ;
 int num_tcp_connections ;

void CleanupSock(SOCK *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 Disconnect(s);

 if (s->InProcAcceptQueue != ((void*)0))
 {
  while (1)
  {
   SOCK *ss = GetNext(s->InProcAcceptQueue);
   if (ss == ((void*)0))
   {
    break;
   }

   Disconnect(ss);
   ReleaseSock(ss);
  }

  ReleaseQueue(s->InProcAcceptQueue);
 }

 if (s->InProcAcceptEvent != ((void*)0))
 {
  ReleaseEvent(s->InProcAcceptEvent);
 }

 if (s->ReverseAcceptQueue != ((void*)0))
 {
  while (1)
  {
   SOCK *ss = GetNext(s->ReverseAcceptQueue);
   if (ss == ((void*)0))
   {
    break;
   }

   Disconnect(ss);
   ReleaseSock(ss);
  }

  ReleaseQueue(s->ReverseAcceptQueue);
 }

 if (s->ReverseAcceptEvent != ((void*)0))
 {
  ReleaseEvent(s->ReverseAcceptEvent);
 }

 if (s->SendTube != ((void*)0))
 {
  TubeDisconnect(s->SendTube);
  ReleaseTube(s->SendTube);
 }

 if (s->RecvTube != ((void*)0))
 {
  TubeDisconnect(s->RecvTube);
  ReleaseTube(s->RecvTube);
 }

 if (s->BulkRecvTube != ((void*)0))
 {
  TubeDisconnect(s->BulkRecvTube);
  ReleaseTube(s->BulkRecvTube);
 }

 if (s->BulkSendTube != ((void*)0))
 {
  TubeDisconnect(s->BulkSendTube);
  ReleaseTube(s->BulkSendTube);
 }

 if (s->BulkSendKey != ((void*)0))
 {
  ReleaseSharedBuffer(s->BulkSendKey);
 }

 if (s->BulkRecvKey != ((void*)0))
 {
  ReleaseSharedBuffer(s->BulkRecvKey);
 }

 if (s->InProcRecvFifo != ((void*)0))
 {
  ReleaseFifo(s->InProcRecvFifo);
 }

 if (s->R_UDP_Stack != ((void*)0))
 {
  FreeRUDP(s->R_UDP_Stack);
 }




 UnixFreeAsyncSocket(s);


 FreeBuf(s->SendBuf);
 if (s->socket != INVALID_SOCKET)
 {



  close(s->socket);

 }
 Free(s->RemoteHostname);
 if (s->RemoteX != ((void*)0))
 {
  FreeX(s->RemoteX);
  s->RemoteX = ((void*)0);
 }
 if (s->LocalX != ((void*)0))
 {
  FreeX(s->LocalX);
  s->LocalX = ((void*)0);
 }


 if (s->CipherName != ((void*)0))
 {
  Free(s->CipherName);
  s->CipherName = ((void*)0);
 }

 Free(s->WaitToUseCipher);
 DeleteLock(s->lock);
 DeleteLock(s->ssl_lock);
 DeleteLock(s->disconnect_lock);

 Dec(num_tcp_connections);

 Free(s);
}
