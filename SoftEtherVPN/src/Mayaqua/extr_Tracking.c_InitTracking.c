
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TRACKING_LIST ;
typedef int CALLSTACK_DATA ;


 int FreeCallStack (int *) ;
 int * GetCallStack () ;
 scalar_t__ OSMemoryAlloc (int) ;
 void* OSNewLock () ;
 int TRACKING_NUM_ARRAY ;
 void* cs_lock ;
 int do_not_get_callstack ;
 int ** hashlist ;
 scalar_t__ obj_id ;
 void* obj_id_lock ;
 void* obj_lock ;

void InitTracking()
{
 UINT i;
 CALLSTACK_DATA *s;


 hashlist = (TRACKING_LIST **)OSMemoryAlloc(sizeof(TRACKING_LIST *) * TRACKING_NUM_ARRAY);

 for (i = 0;i < TRACKING_NUM_ARRAY;i++)
 {
  hashlist[i] = ((void*)0);
 }

 obj_id = 0;


 obj_lock = OSNewLock();
 obj_id_lock = OSNewLock();
 cs_lock = OSNewLock();

 s = GetCallStack();
 if (s == ((void*)0))
 {
  do_not_get_callstack = 1;
 }
 else
 {
  do_not_get_callstack = 0;
  FreeCallStack(s);
 }
}
