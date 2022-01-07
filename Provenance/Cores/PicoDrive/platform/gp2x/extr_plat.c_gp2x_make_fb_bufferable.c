
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WCB_B_BIT ;
 int fprintf (int ,char*) ;
 int * gp2x_screens ;
 int printf (char*) ;
 int stderr ;
 int warm_change_cb_range (int ,int,int ,int) ;

void gp2x_make_fb_bufferable(int yes)
{
 int ret = 0;

 yes = yes ? 1 : 0;
 ret |= warm_change_cb_range(WCB_B_BIT, yes, gp2x_screens[0], 320*240*2);
 ret |= warm_change_cb_range(WCB_B_BIT, yes, gp2x_screens[1], 320*240*2);
 ret |= warm_change_cb_range(WCB_B_BIT, yes, gp2x_screens[2], 320*240*2);
 ret |= warm_change_cb_range(WCB_B_BIT, yes, gp2x_screens[3], 320*240*2);

 if (ret)
  fprintf(stderr, "could not make fb buferable.\n");
 else
  printf("made fb buferable.\n");
}
