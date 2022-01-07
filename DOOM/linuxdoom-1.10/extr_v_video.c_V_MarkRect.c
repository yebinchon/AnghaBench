
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_AddToBox (int ,int,int) ;
 int dirtybox ;

void
V_MarkRect
( int x,
  int y,
  int width,
  int height )
{
    M_AddToBox (dirtybox, x, y);
    M_AddToBox (dirtybox, x+width-1, y+height-1);
}
