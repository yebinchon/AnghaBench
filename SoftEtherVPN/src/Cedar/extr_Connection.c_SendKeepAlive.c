
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USHORT ;
typedef size_t UINT ;
typedef size_t UCHAR ;
struct TYPE_8__ {TYPE_2__* Session; } ;
struct TYPE_7__ {int TotalSendSize; int TotalSendSizeReal; TYPE_1__* UdpAccel; scalar_t__ UseUdpAcceleration; } ;
struct TYPE_6__ {scalar_t__ MyPortByNatTServer; } ;
typedef int TCPSOCK ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ CONNECTION ;


 int Copy (size_t*,int *,int) ;
 int Endian16 (int ) ;
 size_t Endian32 (size_t) ;
 int Free (size_t*) ;
 size_t KEEP_ALIVE_MAGIC ;
 size_t MAX (size_t,int) ;
 size_t MAX_KEEPALIVE_SIZE ;
 size_t* MallocFast (size_t) ;
 int StrLen (int *) ;
 int * UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE ;
 int WriteSendFifo (TYPE_2__*,int *,size_t*,size_t) ;
 size_t rand () ;

void SendKeepAlive(CONNECTION *c, TCPSOCK *ts)
{
 UINT size, i, num;
 UINT size_be;
 SESSION *s;
 UCHAR *buf;
 bool insert_natt_port = 0;

 if (c == ((void*)0) || ts == ((void*)0))
 {
  return;
 }

 s = c->Session;

 size = rand() % MAX_KEEPALIVE_SIZE;
 num = KEEP_ALIVE_MAGIC;

 if (s != ((void*)0) && s->UseUdpAcceleration && s->UdpAccel != ((void*)0))
 {
  if (s->UdpAccel->MyPortByNatTServer != 0)
  {
   size = MAX(size, (StrLen(UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE) + sizeof(USHORT)));

   insert_natt_port = 1;
  }
 }

 buf = MallocFast(size);

 for (i = 0;i < size;i++)
 {
  buf[i] = rand();
 }

 if (insert_natt_port)
 {
  USHORT myport = Endian16((USHORT)s->UdpAccel->MyPortByNatTServer);

  Copy(buf, UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE, StrLen(UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE));
  Copy(buf + StrLen(UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE), &myport, sizeof(USHORT));
 }

 num = Endian32(num);
 size_be = Endian32(size);
 WriteSendFifo(c->Session, ts, &num, sizeof(UINT));
 WriteSendFifo(c->Session, ts, &size_be, sizeof(UINT));
 WriteSendFifo(c->Session, ts, buf, size);

 c->Session->TotalSendSize += sizeof(UINT) * 2 + size;
 c->Session->TotalSendSizeReal += sizeof(UINT) * 2 + size;

 Free(buf);
}
