
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tcp_mss_option ;
typedef int VH ;
typedef void* USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_9__ {void* PacketLength; int Protocol; scalar_t__ Reserved; scalar_t__ DstIP; scalar_t__ SrcIP; } ;
struct TYPE_8__ {int Flag; scalar_t__ Checksum; scalar_t__ UrgentPointer; void* WindowSize; scalar_t__ HeaderSizeAndReserved; void* AckNumber; void* SeqNumber; void* DstPort; void* SrcPort; } ;
typedef TYPE_1__ TCP_HEADER ;
typedef TYPE_2__ IPV4_PSEUDO_HEADER ;


 int Copy (int*,void*,scalar_t__) ;
 void* Endian16 (void*) ;
 void* Endian32 (scalar_t__) ;
 int Free (TYPE_2__*) ;
 int IP_PROTO_TCP ;
 scalar_t__ IpChecksum (TYPE_2__*,scalar_t__) ;
 TYPE_2__* Malloc (int) ;
 int SendIp (int *,scalar_t__,scalar_t__,int ,TYPE_1__*,scalar_t__) ;
 int TCP_HEADER_SIZE ;
 int TCP_SET_HEADER_SIZE (TYPE_1__*,int) ;

void SendTcp(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, UINT seq, UINT ack, UINT flag, UINT window_size, UINT mss, void *data, UINT size)
{
 static UCHAR tcp_mss_option[] = {0x02, 0x04, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00};
 IPV4_PSEUDO_HEADER *vh;
 TCP_HEADER *tcp;
 UINT header_size = TCP_HEADER_SIZE;
 UINT total_size;

 if (v == ((void*)0) || (size != 0 && data == ((void*)0)))
 {
  return;
 }


 vh = Malloc(sizeof(IPV4_PSEUDO_HEADER) + TCP_HEADER_SIZE + size + 32);
 tcp = (TCP_HEADER *)(((UCHAR *)vh) + sizeof(IPV4_PSEUDO_HEADER));

 if (mss != 0)
 {
  USHORT *mss_size;
  mss_size = (USHORT *)(&tcp_mss_option[2]);
  *mss_size = Endian16((USHORT)mss);
  header_size += sizeof(tcp_mss_option);
 }

 total_size = header_size + size;
 if (total_size > 65536)
 {

  Free(vh);
  return;
 }


 vh->SrcIP = src_ip;
 vh->DstIP = dest_ip;
 vh->Reserved = 0;
 vh->Protocol = IP_PROTO_TCP;
 vh->PacketLength = Endian16((USHORT)total_size);


 tcp->SrcPort = Endian16((USHORT)src_port);
 tcp->DstPort = Endian16((USHORT)dest_port);
 tcp->SeqNumber = Endian32(seq);
 tcp->AckNumber = Endian32(ack);
 tcp->HeaderSizeAndReserved = 0;
 TCP_SET_HEADER_SIZE(tcp, (UCHAR)(header_size / 4));
 tcp->Flag = (UCHAR)flag;
 tcp->WindowSize = Endian16((USHORT)window_size);
 tcp->Checksum = 0;
 tcp->UrgentPointer = 0;


 if (mss != 0)
 {
  Copy(((UCHAR *)tcp) + TCP_HEADER_SIZE, tcp_mss_option, sizeof(tcp_mss_option));
 }


 Copy(((UCHAR *)tcp) + header_size, data, size);


 tcp->Checksum = IpChecksum(vh, total_size + 12);


 SendIp(v, dest_ip, src_ip, IP_PROTO_TCP, tcp, total_size);


 Free(vh);
}
