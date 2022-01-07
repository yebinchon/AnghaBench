
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int topoffset; int leftoffset; } ;
typedef TYPE_1__ patch_t ;
typedef int boolean ;
struct TYPE_8__ {int x; int y; } ;
struct TYPE_7__ {size_t epsd; } ;


 int FB ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 TYPE_3__** lnodes ;
 int printf (char*,int) ;
 TYPE_2__* wbs ;

void
WI_drawOnLnode
( int n,
  patch_t* c[] )
{

    int i;
    int left;
    int top;
    int right;
    int bottom;
    boolean fits = 0;

    i = 0;
    do
    {
 left = lnodes[wbs->epsd][n].x - SHORT(c[i]->leftoffset);
 top = lnodes[wbs->epsd][n].y - SHORT(c[i]->topoffset);
 right = left + SHORT(c[i]->width);
 bottom = top + SHORT(c[i]->height);

 if (left >= 0
     && right < SCREENWIDTH
     && top >= 0
     && bottom < SCREENHEIGHT)
 {
     fits = 1;
 }
 else
 {
     i++;
 }
    } while (!fits && i!=2);

    if (fits && i<2)
    {
 V_DrawPatch(lnodes[wbs->epsd][n].x, lnodes[wbs->epsd][n].y,
      FB, c[i]);
    }
    else
    {

 printf("Could not place patch on level %d", n+1);
    }
}
