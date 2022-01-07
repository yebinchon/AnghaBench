
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VH ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_5__ {void* SeqNo; void* Identifier; } ;
typedef TYPE_1__ ICMP_ECHO ;


 int Copy (int *,void*,scalar_t__) ;
 void* Endian16 (int ) ;
 int Free (TYPE_1__*) ;
 int VirtualIcmpSend (int *,scalar_t__,scalar_t__,TYPE_1__*,scalar_t__) ;
 TYPE_1__* ZeroMalloc (scalar_t__) ;

void VirtualIcmpEchoSendResponse(VH *v, UINT src_ip, UINT dst_ip, USHORT id, USHORT seq_no, void *data, UINT size)
{
 ICMP_ECHO *e;

 if (v == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 e = ZeroMalloc(sizeof(ICMP_ECHO) + size);
 e->Identifier = Endian16(id);
 e->SeqNo = Endian16(seq_no);


 Copy(((UCHAR *)e) + sizeof(ICMP_ECHO), data, size);


 VirtualIcmpSend(v, src_ip, dst_ip, e, sizeof(ICMP_ECHO) + size);


 Free(e);
}
