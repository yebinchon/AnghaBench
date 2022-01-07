
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int V_MarkRect (int ,int ,int,int) ;
 int memcpy (int ,int ,int) ;
 int * screens ;

void WI_slamBackground(void)
{
    memcpy(screens[0], screens[1], SCREENWIDTH * SCREENHEIGHT);
    V_MarkRect (0, 0, SCREENWIDTH, SCREENHEIGHT);
}
