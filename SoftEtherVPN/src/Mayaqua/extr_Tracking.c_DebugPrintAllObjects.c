
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {struct TYPE_3__* Next; int Object; } ;
typedef int TRACKING_OBJECT ;
typedef TYPE_1__ TRACKING_LIST ;
typedef int LIST ;


 int Add (int *,int ) ;
 scalar_t__ LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int LockTrackingList () ;
 int * NewListFast (int ) ;
 int Print (char*) ;
 int PrintObjectList (int *) ;
 int ReleaseList (int *) ;
 int Sort (int *) ;
 int SortObjectView ;
 size_t TRACKING_NUM_ARRAY ;
 int UnlockTrackingList () ;
 TYPE_1__** hashlist ;

void DebugPrintAllObjects()
{
 UINT i;
 LIST *view;


 view = NewListFast(SortObjectView);
 LockTrackingList();
 {
  for (i = 0;i < TRACKING_NUM_ARRAY;i++)
  {
   if (hashlist[i] != ((void*)0))
   {
    TRACKING_LIST *t = hashlist[i];

    while (1)
    {
     Add(view, t->Object);

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


 Sort(view);


 for (i = 0;i < LIST_NUM(view);i++)
 {
  TRACKING_OBJECT *o = (TRACKING_OBJECT *)LIST_DATA(view, i);
  PrintObjectList(o);
 }


 ReleaseList(view);

 Print("\n");
}
