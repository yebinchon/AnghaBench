
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_5__ {scalar_t__ Address; int Size; } ;
typedef TYPE_1__ TRACKING_OBJECT ;


 int DeleteTrackingList (TYPE_1__*,int) ;
 int InsertTrackingList (TYPE_1__*) ;
 scalar_t__ IsMemCheck () ;
 scalar_t__ IsTrackingEnabled () ;
 int LockTrackingList () ;
 TYPE_1__* SearchTrackingList (scalar_t__) ;
 int UnlockTrackingList () ;

void TrackChangeObjSize(UINT64 addr, UINT size, UINT64 new_addr)
{
 TRACKING_OBJECT *o;

 if (addr == 0)
 {
  return;
 }

 if ((IsTrackingEnabled() && IsMemCheck()) == 0)
 {

  return;
 }

 LockTrackingList();
 {
  o = SearchTrackingList(addr);
  if (o == ((void*)0))
  {
   UnlockTrackingList();
   return;
  }

  DeleteTrackingList(o, 0);

  o->Size = size;
  o->Address = new_addr;

  InsertTrackingList(o);
 }
 UnlockTrackingList();
}
