
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int Event; } ;
struct TYPE_11__ {scalar_t__ Type; int Connected; int AsyncMode; TYPE_4__* RecvTube; int * InProcRecvFifo; TYPE_4__* SendTube; scalar_t__ Disconnecting; } ;
struct TYPE_10__ {scalar_t__ DataSize; scalar_t__ Data; } ;
typedef TYPE_1__ TUBEDATA ;
typedef TYPE_2__ SOCK ;
typedef int FIFO ;


 int Copy (void*,scalar_t__,scalar_t__) ;
 int Disconnect (TYPE_2__*) ;
 int FreeTubeData (TYPE_1__*) ;
 scalar_t__ GetTimeout (TYPE_2__*) ;
 int IsTubeConnected (TYPE_4__*) ;
 scalar_t__ ReadFifo (int *,void*,scalar_t__) ;
 scalar_t__ SOCK_INPROC ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ Tick64 () ;
 TYPE_1__* TubeRecvAsync (TYPE_4__*) ;
 int Wait (int ,scalar_t__) ;
 int WriteFifo (int *,int *,scalar_t__) ;

UINT RecvInProc(SOCK *sock, void *data, UINT size)
{
 FIFO *f;
 UINT ret;
 UINT timeout;
 UINT64 giveup_time;
 TUBEDATA *d = ((void*)0);
 if (sock == ((void*)0) || sock->Type != SOCK_INPROC || sock->Disconnecting || sock->Connected == 0)
 {
  return 0;
 }

 if (IsTubeConnected(sock->SendTube) == 0)
 {
  return 0;
 }

 f = sock->InProcRecvFifo;
 if (f == ((void*)0))
 {
  return 0;
 }


 ret = ReadFifo(f, data, size);
 if (ret != 0)
 {
  return ret;
 }

 timeout = GetTimeout(sock);

 giveup_time = Tick64() + (UINT)timeout;


 d = ((void*)0);

 while (1)
 {
  UINT64 now = 0;
  UINT interval;

  if (sock->AsyncMode == 0)
  {
   now = Tick64();

   if (now >= giveup_time)
   {
    break;
   }
  }

  d = TubeRecvAsync(sock->RecvTube);

  if (d != ((void*)0))
  {
   break;
  }

  if (IsTubeConnected(sock->RecvTube) == 0)
  {
   break;
  }

  if (sock->AsyncMode)
  {
   break;
  }

  interval = (UINT)(giveup_time - now);

  Wait(sock->RecvTube->Event, interval);
 }

 if (d == ((void*)0))
 {
  if (IsTubeConnected(sock->RecvTube) == 0)
  {
   return 0;
  }

  if (sock->AsyncMode == 0)
  {

   Disconnect(sock);

   return 0;
  }
  else
  {

   return SOCK_LATER;
  }
 }
 else
 {

  if (d->DataSize > size)
  {
   WriteFifo(f, ((UCHAR *)d->Data) + size, d->DataSize - size);
   ret = size;
  }
  else
  {
   ret = d->DataSize;
  }

  Copy(data, d->Data, ret);

  FreeTubeData(d);

  return ret;
 }
}
