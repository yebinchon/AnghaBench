
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;

void
R_AddPointToBox
( int x,
  int y,
  fixed_t* box )
{
    if (x< box[BOXLEFT])
 box[BOXLEFT] = x;
    if (x> box[BOXRIGHT])
 box[BOXRIGHT] = x;
    if (y< box[BOXBOTTOM])
 box[BOXBOTTOM] = y;
    if (y> box[BOXTOP])
 box[BOXTOP] = y;
}
