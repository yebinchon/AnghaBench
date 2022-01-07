
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;


 scalar_t__ ANG90 ;
 int ANGLETOFINESHIFT ;
 int FIELDOFVIEW ;
 int FINEANGLES ;
 int FRACBITS ;
 int FRACUNIT ;
 int FixedDiv (int,int) ;
 int FixedMul (int,int ) ;
 int centerx ;
 int centerxfrac ;
 scalar_t__ clipangle ;
 int* finetangent ;
 int* viewangletox ;
 int viewwidth ;
 scalar_t__* xtoviewangle ;

void R_InitTextureMapping (void)
{
    int i;
    int x;
    int t;
    fixed_t focallength;







    focallength = FixedDiv (centerxfrac,
       finetangent[FINEANGLES/4+FIELDOFVIEW/2] );

    for (i=0 ; i<FINEANGLES/2 ; i++)
    {
 if (finetangent[i] > FRACUNIT*2)
     t = -1;
 else if (finetangent[i] < -FRACUNIT*2)
     t = viewwidth+1;
 else
 {
     t = FixedMul (finetangent[i], focallength);
     t = (centerxfrac - t+FRACUNIT-1)>>FRACBITS;

     if (t < -1)
  t = -1;
     else if (t>viewwidth+1)
  t = viewwidth+1;
 }
 viewangletox[i] = t;
    }




    for (x=0;x<=viewwidth;x++)
    {
 i = 0;
 while (viewangletox[i]>x)
     i++;
 xtoviewangle[x] = (i<<ANGLETOFINESHIFT)-ANG90;
    }


    for (i=0 ; i<FINEANGLES/2 ; i++)
    {
 t = FixedMul (finetangent[i], focallength);
 t = centerx - t;

 if (viewangletox[i] == -1)
     viewangletox[i] = 0;
 else if (viewangletox[i] == viewwidth+1)
     viewangletox[i] = viewwidth;
    }

    clipangle = xtoviewangle[0];
}
