
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef size_t UINT ;
struct TYPE_6__ {struct TYPE_6__* Next; TYPE_1__* Object; } ;
struct TYPE_5__ {scalar_t__ Address; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef TYPE_2__ TRACKING_LIST ;


 size_t TRACKING_HASH (scalar_t__) ;
 TYPE_2__** hashlist ;

TRACKING_OBJECT *SearchTrackingList(UINT64 Address)
{
 UINT i;

 if (Address == 0)
 {
  return ((void*)0);
 }

 i = TRACKING_HASH(Address);

 if (hashlist[i] != ((void*)0))
 {
  TRACKING_LIST *tt = hashlist[i];

  while (1)
  {
   if (tt->Object->Address == Address)
   {
    return tt->Object;
   }

   tt = tt->Next;

   if (tt == ((void*)0))
   {
    break;
   }
  }
 }

 return ((void*)0);
}
