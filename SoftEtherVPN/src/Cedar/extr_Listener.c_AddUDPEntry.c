
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int SessionKey32; TYPE_2__* Session; } ;
typedef TYPE_1__ UDP_ENTRY ;
struct TYPE_10__ {int UDPEntryList; } ;
struct TYPE_9__ {int ref; int SessionKey32; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ CEDAR ;


 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int Debug (char*) ;
 int LockList (int ) ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

void AddUDPEntry(CEDAR *cedar, SESSION *session)
{
 UDP_ENTRY *e;

 if (cedar == ((void*)0) || session == ((void*)0))
 {
  return;
 }

 e = ZeroMalloc(sizeof(UDP_ENTRY));
 e->Session = session;
 e->SessionKey32 = session->SessionKey32;
 AddRef(session->ref);

 LockList(cedar->UDPEntryList);
 {
  Add(cedar->UDPEntryList, e);
 }
 UnlockList(cedar->UDPEntryList);

 Debug("UDP_Entry Added.\n");
}
