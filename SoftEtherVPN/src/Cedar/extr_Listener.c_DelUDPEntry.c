
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int * Session; } ;
typedef TYPE_1__ UDP_ENTRY ;
struct TYPE_8__ {int UDPEntryList; } ;
typedef int SESSION ;
typedef TYPE_2__ CEDAR ;


 int Debug (char*) ;
 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseSession (int *) ;
 int UnlockList (int ) ;

void DelUDPEntry(CEDAR *cedar, SESSION *session)
{
 UINT num, i;

 if (cedar == ((void*)0) || session == ((void*)0))
 {
  return;
 }

 LockList(cedar->UDPEntryList);
 {
  num = LIST_NUM(cedar->UDPEntryList);
  for (i = 0;i < num;i++)
  {
   UDP_ENTRY *e = LIST_DATA(cedar->UDPEntryList, i);
   if (e->Session == session)
   {
    ReleaseSession(e->Session);
    Delete(cedar->UDPEntryList, e);
    Free(e);
    UnlockList(cedar->UDPEntryList);
    Debug("UDP_Entry Deleted.\n");
    return;
   }
  }
 }
 UnlockList(cedar->UDPEntryList);
}
