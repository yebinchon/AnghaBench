
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {int ThreadList; int Engine; void* ClientList; void* IPsecSaList; void* IkeSaList; void* SendPacketList; int Now; int * IPsec; TYPE_2__* Cedar; } ;
typedef int IPSEC_SERVER ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int * CmpIPsecSa ;
 int * CmpIkeClient ;
 int * CmpIkeSa ;
 int IPsecLog (TYPE_1__*,int *,int *,int *,char*) ;
 int NewIkeEngine () ;
 void* NewList (int *) ;
 int NewThreadList () ;
 int Tick64 () ;
 TYPE_1__* ZeroMalloc (int) ;

IKE_SERVER *NewIKEServer(CEDAR *cedar, IPSEC_SERVER *ipsec)
{
 IKE_SERVER *ike;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 ike = ZeroMalloc(sizeof(IKE_SERVER));

 ike->Cedar = cedar;
 AddRef(cedar->ref);

 ike->IPsec = ipsec;

 ike->Now = Tick64();

 ike->SendPacketList = NewList(((void*)0));

 ike->IkeSaList = NewList(CmpIkeSa);

 ike->IPsecSaList = NewList(CmpIPsecSa);

 ike->ClientList = NewList(CmpIkeClient);

 ike->Engine = NewIkeEngine();

 ike->ThreadList = NewThreadList();

 IPsecLog(ike, ((void*)0), ((void*)0), ((void*)0), "LI_START");

 return ike;
}
