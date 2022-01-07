
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef int TRACKING_OBJECT ;


 int Debug (char*,scalar_t__) ;
 int DeleteTrackingList (int *,int) ;
 scalar_t__ IsMemCheck () ;
 scalar_t__ IsTrackingEnabled () ;
 int LockTrackingList () ;
 int * SearchTrackingList (scalar_t__) ;
 int UnlockTrackingList () ;

void TrackDeleteObj(UINT64 addr)
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
   Debug("TrackDeleteObj(): 0x%x not found in tracking list!\n", addr);
   return;
  }
  DeleteTrackingList(o, 1);
 }
 UnlockTrackingList();
}
