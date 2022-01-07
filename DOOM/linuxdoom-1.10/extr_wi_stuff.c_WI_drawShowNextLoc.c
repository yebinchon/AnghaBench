
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int epsd; int last; int next; scalar_t__ didsecret; } ;


 int WI_drawAnimatedBack () ;
 int WI_drawEL () ;
 int WI_drawOnLnode (int,int *) ;
 int WI_slamBackground () ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 scalar_t__ snl_pointeron ;
 int splat ;
 TYPE_1__* wbs ;
 int * yah ;

void WI_drawShowNextLoc(void)
{

    int i;
    int last;

    WI_slamBackground();


    WI_drawAnimatedBack();

    if ( gamemode != commercial)
    {
   if (wbs->epsd > 2)
 {
     WI_drawEL();
     return;
 }

 last = (wbs->last == 8) ? wbs->next - 1 : wbs->last;


 for (i=0 ; i<=last ; i++)
     WI_drawOnLnode(i, &splat);


 if (wbs->didsecret)
     WI_drawOnLnode(8, &splat);


 if (snl_pointeron)
     WI_drawOnLnode(wbs->next, yah);
    }


    if ( (gamemode != commercial)
  || wbs->next != 30)
 WI_drawEL();

}
