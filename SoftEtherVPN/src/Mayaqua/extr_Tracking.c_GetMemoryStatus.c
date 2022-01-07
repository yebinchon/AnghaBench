
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {size_t MemoryBlocksNum; size_t MemorySize; } ;
struct TYPE_7__ {struct TYPE_7__* Next; TYPE_1__* Object; } ;
struct TYPE_6__ {size_t Size; int Name; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef TYPE_2__ TRACKING_LIST ;
typedef TYPE_3__ MEMORY_STATUS ;


 int LockTrackingList () ;
 scalar_t__ StrCmpi (int ,char*) ;
 size_t TRACKING_NUM_ARRAY ;
 int UnlockTrackingList () ;
 TYPE_2__** hashlist ;

void GetMemoryStatus(MEMORY_STATUS *status)
{
 UINT i, num, size;

 if (status == ((void*)0))
 {
  return;
 }

 LockTrackingList();
 {
  size = num = 0;

  for (i = 0;i < TRACKING_NUM_ARRAY;i++)
  {
   if (hashlist[i] != ((void*)0))
   {
    TRACKING_LIST *t = hashlist[i];

    while (1)
    {
     TRACKING_OBJECT *o = t->Object;

     if (StrCmpi(o->Name, "MEM") == 0)
     {
      num++;
      size += o->Size;
     }

     if (t->Next == ((void*)0))
     {
      break;
     }

     t = t->Next;
    }
   }
  }
 }
 UnlockTrackingList();

 status->MemoryBlocksNum = num;
 status->MemorySize = size;
}
