
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;


 int AM_NUMMARKPOINTS ;
 int CXMTOF (int) ;
 int CYMTOF (int ) ;
 int FB ;
 int V_DrawPatch (int,int,int ,int ) ;
 int f_h ;
 int f_w ;
 int f_x ;
 int f_y ;
 int * marknums ;
 TYPE_1__* markpoints ;

void AM_drawMarks(void)
{
    int i, fx, fy, w, h;

    for (i=0;i<AM_NUMMARKPOINTS;i++)
    {
 if (markpoints[i].x != -1)
 {


     w = 5;
     h = 6;
     fx = CXMTOF(markpoints[i].x);
     fy = CYMTOF(markpoints[i].y);
     if (fx >= f_x && fx <= f_w - w && fy >= f_y && fy <= f_h - h)
  V_DrawPatch(fx, fy, FB, marknums[i]);
 }
    }

}
