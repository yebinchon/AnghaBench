
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int NetSvcList; } ;
struct TYPE_6__ {int Udp; char* Name; int Port; } ;
typedef TYPE_1__ NETSVC ;
typedef TYPE_2__ CEDAR ;


 int LockList (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int UnlockList (int ) ;

char *GetSvcName(CEDAR *cedar, bool udp, UINT port)
{
 char *ret = ((void*)0);
 NETSVC t;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 t.Udp = (udp == 0 ? 0 : 1);
 t.Port = port;

 LockList(cedar->NetSvcList);
 {
  NETSVC *n = Search(cedar->NetSvcList, &t);
  if (n != ((void*)0))
  {
   ret = n->Name;
  }
 }
 UnlockList(cedar->NetSvcList);

 return ret;
}
