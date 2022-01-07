
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VH_OPTION ;
struct TYPE_6__ {int Online; int Cedar; int * Virtual; int Option; int * ClientAuth; int * ClientOption; int * SecureNAT; int HaltEvent; int HashedPassword; int lock; } ;
typedef int SNAT ;
typedef TYPE_1__ NAT ;


 int NewEvent () ;
 int NewLock () ;
 void* NewVirtualHostEx (int ,int *,int *,int *,TYPE_1__*) ;
 int NiInitConfig (TYPE_1__*) ;
 int Sha0 (int ,char*,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

NAT *NiNewNatEx(SNAT *snat, VH_OPTION *o)
{
 NAT *n = ZeroMalloc(sizeof(NAT));

 n->lock = NewLock();
 Sha0(n->HashedPassword, "", 0);
 n->HaltEvent = NewEvent();



 n->SecureNAT = snat;





 NiInitConfig(n);
 n->Virtual = NewVirtualHostEx(n->Cedar, ((void*)0), ((void*)0), o, n);
 n->Online = 1;





 return n;
}
