
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ CurrentIpQuota; int IpCombine; scalar_t__ Now; } ;
typedef TYPE_1__ VH ;
typedef int USHORT ;
typedef scalar_t__ UINT64 ;
typedef void* UINT ;
typedef void* UCHAR ;
struct TYPE_8__ {int SrcIsLocalMacAddr; int MacBroadcast; scalar_t__ DataReserved; int Data; void* Ttl; void* Protocol; int IpParts; scalar_t__ Size; scalar_t__ Expire; int Id; void* SrcIP; void* DestIP; } ;
typedef TYPE_2__ IP_COMBINE ;


 scalar_t__ IP_COMBINE_INITIAL_BUF_SIZE ;
 scalar_t__ IP_COMBINE_TIMEOUT ;
 scalar_t__ IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA ;
 int Insert (int ,TYPE_2__*) ;
 int Malloc (scalar_t__) ;
 int NewList (int *) ;
 TYPE_2__* ZeroMalloc (int) ;

IP_COMBINE *InsertIpCombine(VH *v, UINT src_ip, UINT dest_ip, USHORT id, UCHAR protocol, bool mac_broadcast, UCHAR ttl, bool src_is_localmac)
{
 IP_COMBINE *c;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }


 if ((v->CurrentIpQuota + IP_COMBINE_INITIAL_BUF_SIZE) > IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA)
 {

  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(IP_COMBINE));
 c->SrcIsLocalMacAddr = src_is_localmac;
 c->DestIP = dest_ip;
 c->SrcIP = src_ip;
 c->Id = id;
 c->Expire = v->Now + (UINT64)IP_COMBINE_TIMEOUT;
 c->Size = 0;
 c->IpParts = NewList(((void*)0));
 c->Protocol = protocol;
 c->MacBroadcast = mac_broadcast;
 c->Ttl = ttl;


 c->DataReserved = IP_COMBINE_INITIAL_BUF_SIZE;
 c->Data = Malloc(c->DataReserved);
 v->CurrentIpQuota += c->DataReserved;

 Insert(v->IpCombine, c);

 return c;
}
