
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last; int first; } ;
typedef TYPE_1__ cliprange_t ;


 int R_StoreWallRange (int,int) ;
 TYPE_1__* newend ;
 TYPE_1__* solidsegs ;

void
R_ClipSolidWallSegment
( int first,
  int last )
{
    cliprange_t* next;
    cliprange_t* start;



    start = solidsegs;
    while (start->last < first-1)
 start++;

    if (first < start->first)
    {
 if (last < start->first-1)
 {


     R_StoreWallRange (first, last);
     next = newend;
     newend++;

     while (next != start)
     {
  *next = *(next-1);
  next--;
     }
     next->first = first;
     next->last = last;
     return;
 }


 R_StoreWallRange (first, start->first - 1);

 start->first = first;
    }


    if (last <= start->last)
 return;

    next = start;
    while (last >= (next+1)->first-1)
    {

 R_StoreWallRange (next->last + 1, (next+1)->first - 1);
 next++;

 if (last <= next->last)
 {


     start->last = next->last;
     goto crunch;
 }
    }


    R_StoreWallRange (next->last + 1, last);

    start->last = last;



  crunch:
    if (next == start)
    {

 return;
    }


    while (next++ != newend)
    {

 *++start = *next;
    }

    newend = start+1;
}
