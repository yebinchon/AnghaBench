
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_15__ {int Size; int HeadIpHeaderDataSize; int DataReserved; int MaxL3Size; int * HeadIpHeaderData; int Ttl; scalar_t__ Data; int Protocol; int DestIP; int SrcIP; int IpParts; } ;
struct TYPE_14__ {int Offset; int Size; } ;
struct TYPE_13__ {int IpCombine; int CurrentIpQuota; } ;
typedef TYPE_1__ NATIVE_NAT ;
typedef TYPE_2__ IP_PART ;
typedef TYPE_3__ IP_COMBINE ;
typedef int IPV4_HEADER ;


 int Add (int ,TYPE_2__*) ;
 int * Clone (int *,int) ;
 int Copy (int *,void*,int) ;
 int Delete (int ,TYPE_3__*) ;
 TYPE_2__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int NnFreeIpCombine (TYPE_1__*,TYPE_3__*) ;
 int NnIpReceived (TYPE_1__*,int ,int ,int ,scalar_t__,int,int ,int *,int,int ) ;
 scalar_t__ ReAlloc (scalar_t__,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void NnCombineIp(NATIVE_NAT *t, IP_COMBINE *c, UINT offset, void *data, UINT size, bool last_packet, UCHAR *head_ip_header_data, UINT head_ip_header_size)
{
 UINT i;
 IP_PART *p;
 UINT need_size;
 UINT data_size_delta;

 if (c == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 if ((offset + size) > 65535)
 {

  return;
 }

 if (last_packet == 0 && c->Size != 0)
 {
  if ((offset + size) > c->Size)
  {

   return;
  }
 }

 if (head_ip_header_data != ((void*)0) && head_ip_header_size >= sizeof(IPV4_HEADER))
 {
  if (c->HeadIpHeaderData == ((void*)0))
  {
   c->HeadIpHeaderData = Clone(head_ip_header_data, head_ip_header_size);
   c->HeadIpHeaderDataSize = head_ip_header_size;
  }
 }

 need_size = offset + size;
 data_size_delta = c->DataReserved;

 while (c->DataReserved < need_size)
 {
  c->DataReserved = c->DataReserved * 4;
  c->Data = ReAlloc(c->Data, c->DataReserved);
 }
 data_size_delta = c->DataReserved - data_size_delta;
 t->CurrentIpQuota += data_size_delta;


 Copy(((UCHAR *)c->Data) + offset, data, size);

 if (last_packet)
 {

  c->Size = offset + size;
 }



 for (i = 0;i < LIST_NUM(c->IpParts);i++)
 {
  UINT moving_size;
  IP_PART *p = LIST_DATA(c->IpParts, i);


  if ((p->Offset <= offset) && ((p->Offset + p->Size) > offset))
  {



   if ((offset + size) <= (p->Offset + p->Size))
   {

    size = 0;
   }
   else
   {

    moving_size = p->Offset + p->Size - offset;
    offset += moving_size;
    size -= moving_size;
   }
  }
  if ((p->Offset < (offset + size)) && ((p->Offset + p->Size) >= (offset + size)))
  {



   moving_size = p->Offset + p->Size - offset - size;
   size -= moving_size;
  }

  if ((p->Offset >= offset) && ((p->Offset + p->Size) <= (offset + size)))
  {

   p->Size = 0;
  }
 }

 if (size != 0)
 {

  p = ZeroMalloc(sizeof(IP_PART));

  p->Offset = offset;
  p->Size = size;

  Add(c->IpParts, p);
 }

 if (c->Size != 0)
 {

  UINT total_size = 0;
  UINT i;

  for (i = 0;i < LIST_NUM(c->IpParts);i++)
  {
   IP_PART *p = LIST_DATA(c->IpParts, i);

   total_size += p->Size;
  }

  if (total_size == c->Size)
  {


   NnIpReceived(t, c->SrcIP, c->DestIP, c->Protocol, c->Data, c->Size, c->Ttl,
    c->HeadIpHeaderData, c->HeadIpHeaderDataSize, c->MaxL3Size);


   NnFreeIpCombine(t, c);


   Delete(t->IpCombine, c);
  }
 }
}
