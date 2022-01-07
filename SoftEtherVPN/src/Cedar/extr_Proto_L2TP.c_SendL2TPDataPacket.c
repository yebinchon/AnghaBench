
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
typedef int UDPPACKET ;
typedef int UCHAR ;
struct TYPE_6__ {int IsV3; int SessionId1; } ;
struct TYPE_5__ {int TunnelId1; int IsYamahaV3; int ClientPort; int ClientIp; int ServerPort; int ServerIp; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;
typedef int L2TP_SERVER ;


 int Copy (int*,void*,int) ;
 int IPSEC_PORT_L2TPV3_VIRTUAL ;
 int L2TPSendUDP (int *,int *) ;
 int* Malloc (int) ;
 int * NewUdpPacket (int *,int ,int *,int ,int*,int) ;
 int WRITE_UINT (int*,int) ;
 int WRITE_USHORT (int*,int) ;

void SendL2TPDataPacket(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_SESSION *s, void *data, UINT size)
{
 UDPPACKET *p;
 UCHAR *buf;
 UINT buf_size;

 if (l2tp == ((void*)0) || t == ((void*)0) || s == ((void*)0) || (size != 0 && data == ((void*)0)))
 {
  return;
 }


 if (s->IsV3 == 0)
 {

  buf_size = 8 + size;
  buf = Malloc(buf_size);
  buf[0] = 0x40;
  buf[1] = 0x02;

  WRITE_USHORT(buf + 2, buf_size);
  WRITE_USHORT(buf + 4, t->TunnelId1);
  WRITE_USHORT(buf + 6, s->SessionId1);

  Copy(buf + 8, data, size);


  p = NewUdpPacket(&t->ServerIp, t->ServerPort, &t->ClientIp, t->ClientPort, buf, buf_size);
 }
 else
 {

  if (t->IsYamahaV3 == 0)
  {
   buf_size = 4 + size;
   buf = Malloc(buf_size);

   WRITE_UINT(buf, s->SessionId1);

   Copy(buf + 4, data, size);


   p = NewUdpPacket(&t->ServerIp, IPSEC_PORT_L2TPV3_VIRTUAL, &t->ClientIp, IPSEC_PORT_L2TPV3_VIRTUAL, buf, buf_size);
  }
  else
  {
   UINT header = 0x00030000;

   buf_size = 8 + size;
   buf = Malloc(buf_size);

   WRITE_UINT(buf, header);
   WRITE_UINT(buf + 4, s->SessionId1);

   Copy(buf + 8, data, size);


   p = NewUdpPacket(&t->ServerIp, t->ServerPort, &t->ClientIp, t->ClientPort, buf, buf_size);
  }
 }

 L2TPSendUDP(l2tp, p);
}
