
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {TYPE_2__* Session; int SessionKey32; } ;
typedef TYPE_1__ UDP_ENTRY ;
struct TYPE_10__ {int UDPEntryList; } ;
struct TYPE_9__ {int ref; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int LockList (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int UnlockList (int ) ;

SESSION *GetSessionFromUDPEntry(CEDAR *cedar, UINT key32)
{
 UDP_ENTRY *e, t;
 SESSION *s;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 t.SessionKey32 = key32;

 LockList(cedar->UDPEntryList);
 {
  e = Search(cedar->UDPEntryList, &t);
  if (e == ((void*)0))
  {
   UnlockList(cedar->UDPEntryList);
   return ((void*)0);
  }
  s = e->Session;
  AddRef(s->ref);
 }
 UnlockList(cedar->UDPEntryList);

 return s;
}
