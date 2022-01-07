
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int OPENVPN_CHANNEL ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * NewBuf () ;
 int OPENVPN_CONTROL_PACKET_MAX_DATASIZE ;
 int OvsSendControlPacket (int *,int ,int *,scalar_t__) ;
 scalar_t__ ReadBuf (int *,int *,int) ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,int *,scalar_t__) ;

void OvsSendControlPacketWithAutoSplit(OPENVPN_CHANNEL *c, UCHAR opcode, UCHAR *data, UINT data_size)
{
 BUF *b;

 if (c == ((void*)0) || (data_size != 0 && data == ((void*)0)))
 {
  return;
 }

 b = NewBuf();
 WriteBuf(b, data, data_size);
 SeekBuf(b, 0, 0);

 while (1)
 {
  UCHAR tmp[OPENVPN_CONTROL_PACKET_MAX_DATASIZE];
  UINT size = ReadBuf(b, tmp, sizeof(tmp));

  if (size == 0)
  {
   break;
  }

  OvsSendControlPacket(c, opcode, tmp, size);

 }

 FreeBuf(b);
}
