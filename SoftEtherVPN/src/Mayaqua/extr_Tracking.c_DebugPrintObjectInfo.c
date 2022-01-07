
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {struct TYPE_6__* Next; TYPE_1__* Object; } ;
struct TYPE_5__ {size_t Id; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef TYPE_2__ TRACKING_LIST ;


 int LockTrackingList () ;
 int Print (char*,...) ;
 int PrintObjectInfo (TYPE_1__*) ;
 size_t TRACKING_NUM_ARRAY ;
 int UnlockTrackingList () ;
 TYPE_2__** hashlist ;

void DebugPrintObjectInfo(UINT id)
{
 UINT i;
 TRACKING_OBJECT *o;


 o = ((void*)0);
 LockTrackingList();
 {
  for (i = 0;i < TRACKING_NUM_ARRAY;i++)
  {
   if (hashlist[i] != ((void*)0))
   {
    TRACKING_LIST *t = hashlist[i];

    while (1)
    {
     if (t->Object->Id == id)
     {
      o = t->Object;
      break;
     }

     if (t->Next == ((void*)0))
     {
      break;
     }

     t = t->Next;
    }

    if (o != ((void*)0))
    {
     break;
    }
   }
  }
 }
 UnlockTrackingList();

 if (o == ((void*)0))
 {

  Print("obj_id %u Not Found.\n\n", id);
  return;
 }

 PrintObjectInfo(o);
 Print("\n");
}
