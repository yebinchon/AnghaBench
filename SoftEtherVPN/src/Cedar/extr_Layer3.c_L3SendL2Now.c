
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef void UCHAR ;
struct TYPE_9__ {int SendQueue; } ;
struct TYPE_8__ {void* DestAddress; void* SrcAddress; int Protocol; } ;
struct TYPE_7__ {int PacketSize; void* PacketData; } ;
typedef TYPE_1__ PKT ;
typedef TYPE_2__ MAC_HEADER ;
typedef TYPE_3__ L3IF ;


 int Copy (void*,void*,int) ;
 int Endian16 (int ) ;
 int InsertQueue (int ,TYPE_1__*) ;
 scalar_t__ MAC_HEADER_SIZE ;
 void* Malloc (scalar_t__) ;
 TYPE_1__* ZeroMalloc (int) ;

void L3SendL2Now(L3IF *f, UCHAR *dest_mac, UCHAR *src_mac, USHORT protocol, void *data, UINT size)
{
 UCHAR *buf;
 MAC_HEADER *mac_header;
 PKT *p;

 if (f == ((void*)0) || dest_mac == ((void*)0) || src_mac == ((void*)0) || data == ((void*)0))
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


 p = ZeroMalloc(sizeof(PKT));
 p->PacketData = buf;
 p->PacketSize = size;


 InsertQueue(f->SendQueue, p);
}
