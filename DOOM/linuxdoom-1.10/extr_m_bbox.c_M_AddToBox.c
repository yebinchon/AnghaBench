
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fixed_t ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;

void
M_AddToBox
( fixed_t* box,
  fixed_t x,
  fixed_t y )
{
    if (x<box[BOXLEFT])
 box[BOXLEFT] = x;
    else if (x>box[BOXRIGHT])
 box[BOXRIGHT] = x;
    if (y<box[BOXBOTTOM])
 box[BOXBOTTOM] = y;
    else if (y>box[BOXTOP])
 box[BOXTOP] = y;
}
