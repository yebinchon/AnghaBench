
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef void* UINT ;
struct TYPE_4__ {char* Name; scalar_t__ LineNumber; scalar_t__* FileName; int CallStack; int CreatedDate; void* Size; scalar_t__ Address; void* Id; } ;
typedef TYPE_1__ TRACKING_OBJECT ;


 int GetCallStack () ;
 int InsertTrackingList (TYPE_1__*) ;
 scalar_t__ IsMemCheck () ;
 scalar_t__ IsTrackingEnabled () ;
 int LocalTime64 () ;
 int LockTrackingList () ;
 int OSLock (int ) ;
 TYPE_1__* OSMemoryAlloc (int) ;
 int OSUnlock (int ) ;
 int UnlockTrackingList () ;
 int WalkDownCallStack (int ,int) ;
 void* obj_id ;
 int obj_id_lock ;

void TrackNewObj(UINT64 addr, char *name, UINT size)
{
 TRACKING_OBJECT *o;
 UINT new_id;

 if (addr == 0 || name == ((void*)0))
 {
  return;
 }

 if ((IsTrackingEnabled() && IsMemCheck()) == 0)
 {

  return;
 }


 OSLock(obj_id_lock);
 {
  new_id = ++obj_id;
 }
 OSUnlock(obj_id_lock);

 o = OSMemoryAlloc(sizeof(TRACKING_OBJECT));
 o->Id = new_id;
 o->Address = addr;
 o->Name = name;
 o->Size = size;
 o->CreatedDate = LocalTime64();
 o->CallStack = WalkDownCallStack(GetCallStack(), 2);

 o->FileName[0] = 0;
 o->LineNumber = 0;

 LockTrackingList();
 {
  InsertTrackingList(o);
 }
 UnlockTrackingList();
}
