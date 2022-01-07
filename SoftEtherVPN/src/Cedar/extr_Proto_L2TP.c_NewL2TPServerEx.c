
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int ref; } ;
struct TYPE_6__ {int IsIPsecIPv6; int CryptBlockSize; int * IkeServer; int ThreadList; int HaltCompletedEvent; void* TunnelList; void* SendPacketList; TYPE_2__* Cedar; int FlushList; } ;
typedef TYPE_1__ L2TP_SERVER ;
typedef int IKE_SERVER ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int NewEvent () ;
 void* NewList (int *) ;
 int NewThreadList () ;
 int NewTubeFlushList () ;
 TYPE_1__* ZeroMalloc (int) ;

L2TP_SERVER *NewL2TPServerEx(CEDAR *cedar, IKE_SERVER *ike, bool is_ipv6, UINT crypt_block_size)
{
 L2TP_SERVER *l2tp;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 l2tp = ZeroMalloc(sizeof(L2TP_SERVER));

 l2tp->FlushList = NewTubeFlushList();

 l2tp->Cedar = cedar;
 AddRef(l2tp->Cedar->ref);

 l2tp->SendPacketList = NewList(((void*)0));
 l2tp->TunnelList = NewList(((void*)0));

 l2tp->HaltCompletedEvent = NewEvent();

 l2tp->ThreadList = NewThreadList();

 l2tp->IkeServer = ike;

 l2tp->IsIPsecIPv6 = is_ipv6;
 l2tp->CryptBlockSize = crypt_block_size;

 return l2tp;
}
