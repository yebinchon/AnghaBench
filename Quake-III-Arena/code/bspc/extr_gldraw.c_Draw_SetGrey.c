
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drawflag ;
 int glColor3f (double,double,double) ;

void Draw_SetGrey (void)
{
 if (!drawflag)
  return;

 glColor3f (0.5,0.5,0.5);
}
