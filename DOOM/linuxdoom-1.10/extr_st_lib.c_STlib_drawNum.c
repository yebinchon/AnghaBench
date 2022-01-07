
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int* num; int x; int oldnum; scalar_t__ y; TYPE_2__** p; } ;
typedef TYPE_1__ st_number_t ;
typedef int boolean ;
struct TYPE_6__ {int height; int width; } ;


 int BG ;
 int FG ;
 int I_Error (char*) ;
 int SHORT (int ) ;
 scalar_t__ ST_Y ;
 int V_CopyRect (int,scalar_t__,int ,int,int,int,scalar_t__,int ) ;
 int V_DrawPatch (int,scalar_t__,int ,TYPE_2__*) ;
 TYPE_2__* sttminus ;

void
STlib_drawNum
( st_number_t* n,
  boolean refresh )
{

    int numdigits = n->width;
    int num = *n->num;

    int w = SHORT(n->p[0]->width);
    int h = SHORT(n->p[0]->height);
    int x = n->x;

    int neg;

    n->oldnum = *n->num;

    neg = num < 0;

    if (neg)
    {
 if (numdigits == 2 && num < -9)
     num = -9;
 else if (numdigits == 3 && num < -99)
     num = -99;

 num = -num;
    }


    x = n->x - numdigits*w;

    if (n->y - ST_Y < 0)
 I_Error("drawNum: n->y - ST_Y < 0");

    V_CopyRect(x, n->y - ST_Y, BG, w*numdigits, h, x, n->y, FG);


    if (num == 1994)
 return;

    x = n->x;


    if (!num)
 V_DrawPatch(x - w, n->y, FG, n->p[ 0 ]);


    while (num && numdigits--)
    {
 x -= w;
 V_DrawPatch(x, n->y, FG, n->p[ num % 10 ]);
 num /= 10;
    }


    if (neg)
 V_DrawPatch(x - 8, n->y, FG, sttminus);
}
