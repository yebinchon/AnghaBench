
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT64 ;
typedef void* UINT ;
typedef void* UCHAR ;
struct TYPE_10__ {int SrcIsLocalMacAddr; int MacBroadcast; scalar_t__ DataReserved; int Data; void* Ttl; void* Protocol; int IpParts; scalar_t__ Size; scalar_t__ Expire; int Id; void* SrcIP; void* DestIP; } ;
struct TYPE_9__ {scalar_t__ CurrentIpQuota; int IpCombine; TYPE_1__* v; } ;
struct TYPE_8__ {scalar_t__ Now; } ;
typedef TYPE_2__ NATIVE_NAT ;
typedef TYPE_3__ IP_COMBINE ;


 scalar_t__ IP_COMBINE_INITIAL_BUF_SIZE ;
 scalar_t__ IP_COMBINE_TIMEOUT ;
 scalar_t__ IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA ;
 int Insert (int ,TYPE_3__*) ;
 int Malloc (scalar_t__) ;
 int NewList (int *) ;
 TYPE_3__* ZeroMalloc (int) ;

IP_COMBINE *NnInsertIpCombine(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, USHORT id, UCHAR protocol, bool mac_broadcast, UCHAR ttl, bool src_is_localmac)
{
 IP_COMBINE *c;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }


 if ((t->CurrentIpQuota + IP_COMBINE_INITIAL_BUF_SIZE) > IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA)
 {

  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(IP_COMBINE));
 c->SrcIsLocalMacAddr = src_is_localmac;
 c->DestIP = dest_ip;
 c->SrcIP = src_ip;
 c->Id = id;
 c->Expire = t->v->Now + (UINT64)IP_COMBINE_TIMEOUT;
 c->Size = 0;
 c->IpParts = NewList(((void*)0));
 c->Protocol = protocol;
 c->MacBroadcast = mac_broadcast;
 c->Ttl = ttl;


 c->DataReserved = IP_COMBINE_INITIAL_BUF_SIZE;
 c->Data = Malloc(c->DataReserved);
 t->CurrentIpQuota += c->DataReserved;

 Insert(t->IpCombine, c);

 return c;
}
