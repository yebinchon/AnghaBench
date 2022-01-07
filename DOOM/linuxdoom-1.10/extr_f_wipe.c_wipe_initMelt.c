
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_Random () ;
 int PU_STATIC ;
 scalar_t__ Z_Malloc (int,int ,int ) ;
 int memcpy (int ,scalar_t__,int) ;
 int wipe_scr ;
 scalar_t__ wipe_scr_end ;
 scalar_t__ wipe_scr_start ;
 int wipe_shittyColMajorXform (short*,int,int) ;
 int* y ;

int
wipe_initMelt
( int width,
  int height,
  int ticks )
{
    int i, r;


    memcpy(wipe_scr, wipe_scr_start, width*height);



    wipe_shittyColMajorXform((short*)wipe_scr_start, width/2, height);
    wipe_shittyColMajorXform((short*)wipe_scr_end, width/2, height);



    y = (int *) Z_Malloc(width*sizeof(int), PU_STATIC, 0);
    y[0] = -(M_Random()%16);
    for (i=1;i<width;i++)
    {
 r = (M_Random()%3) - 1;
 y[i] = y[i-1] + r;
 if (y[i] > 0) y[i] = 0;
 else if (y[i] == -16) y[i] = -15;
    }

    return 0;
}
