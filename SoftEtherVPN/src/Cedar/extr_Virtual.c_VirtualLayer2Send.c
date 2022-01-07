
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Cancel; int SendQueue; } ;
typedef TYPE_1__ VH ;
typedef int USHORT ;
typedef int UINT ;
typedef void UCHAR ;
struct TYPE_5__ {void* DestAddress; void* SrcAddress; int Protocol; } ;
typedef TYPE_2__ MAC_HEADER ;
typedef int BLOCK ;


 int Cancel (int ) ;
 int Copy (void*,void*,int) ;
 int Endian16 (int ) ;
 int InsertQueue (int ,int *) ;
 int LockQueue (int ) ;
 scalar_t__ MAC_HEADER_SIZE ;
 int MAX_PACKET_SIZE ;
 void* Malloc (scalar_t__) ;
 int * NewBlock (void*,int,int ) ;
 int UnlockQueue (int ) ;

void VirtualLayer2Send(VH *v, UCHAR *dest_mac, UCHAR *src_mac, USHORT protocol, void *data, UINT size)
{
 MAC_HEADER *mac_header;
 UCHAR *buf;
 BLOCK *block;

 if (v == ((void*)0) || dest_mac == ((void*)0) || src_mac == ((void*)0) || data == ((void*)0) || size > (MAX_PACKET_SIZE - sizeof(MAC_HEADER)))
 {
  return;
 }


 buf = Malloc(MAC_HEADER_SIZE + size);


 mac_header = (MAC_HEADER *)&buf[0];
 Copy(mac_header->DestAddress, dest_mac, 6);
 Copy(mac_header->SrcAddress, src_mac, 6);
 mac_header->Protocol = Endian16(protocol);


 Copy(&buf[sizeof(MAC_HEADER)], data, size);


 size += sizeof(MAC_HEADER);


 block = NewBlock(buf, size, 0);


 LockQueue(v->SendQueue);
 {
  InsertQueue(v->SendQueue, block);
 }
 UnlockQueue(v->SendQueue);


 Cancel(v->Cancel);
}
