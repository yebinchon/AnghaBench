
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_MapPlane (int,int,int) ;
 int* spanstart ;

void
R_MakeSpans
( int x,
  int t1,
  int b1,
  int t2,
  int b2 )
{
    while (t1 < t2 && t1<=b1)
    {
 R_MapPlane (t1,spanstart[t1],x-1);
 t1++;
    }
    while (b1 > b2 && b1>=t1)
    {
 R_MapPlane (b1,spanstart[b1],x-1);
 b1--;
    }

    while (t2 < t1 && t2<=b2)
    {
 spanstart[t2] = x;
 t2++;
    }
    while (b2 > b1 && b2>=t2)
    {
 spanstart[b2] = x;
 b2--;
    }
}
