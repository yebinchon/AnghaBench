
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last; int first; } ;
typedef TYPE_1__ cliprange_t ;


 int R_StoreWallRange (int,int) ;
 TYPE_1__* solidsegs ;

void
R_ClipPassWallSegment
( int first,
  int last )
{
    cliprange_t* start;



    start = solidsegs;
    while (start->last < first-1)
 start++;

    if (first < start->first)
    {
 if (last < start->first-1)
 {

     R_StoreWallRange (first, last);
     return;
 }


 R_StoreWallRange (first, start->first - 1);
    }


    if (last <= start->last)
 return;

    while (last >= (start+1)->first-1)
    {

 R_StoreWallRange (start->last + 1, (start+1)->first - 1);
 start++;

 if (last <= start->last)
     return;
    }


    R_StoreWallRange (start->last + 1, last);
}
