
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int CallStack; struct TYPE_6__* Next; struct TYPE_6__* Object; int Address; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef TYPE_1__ TRACKING_LIST ;


 int FreeCallStack (int ) ;
 int OSMemoryFree (TYPE_1__*) ;
 size_t TRACKING_HASH (int ) ;
 TYPE_1__** hashlist ;

void DeleteTrackingList(TRACKING_OBJECT *o, bool free_object_memory)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 i = TRACKING_HASH(o->Address);

 if (hashlist[i] != ((void*)0))
 {
  TRACKING_LIST *ft = ((void*)0);

  if (hashlist[i]->Object == o)
  {
   ft = hashlist[i];
   hashlist[i] = hashlist[i]->Next;
  }
  else
  {
   TRACKING_LIST *tt = hashlist[i];
   TRACKING_LIST *prev = ((void*)0);

   while (1)
   {
    if (tt->Object == o)
    {
     prev->Next = tt->Next;
     ft = tt;
     break;
    }

    if (tt->Next == ((void*)0))
    {
     break;
    }

    prev = tt;
    tt = tt->Next;
   }
  }

  if (ft != ((void*)0))
  {
   OSMemoryFree(ft);

   if (free_object_memory)
   {
    FreeCallStack(o->CallStack);
    OSMemoryFree(o);
   }
  }
 }
}
