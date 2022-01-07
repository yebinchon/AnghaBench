
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;


 int False ;
 int I_Error (char*) ;
 int I_GetEvent () ;
 int I_GetTime () ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int True ;
 int XPutImage (int ,int ,int ,TYPE_1__*,int ,int ,int ,int ,int,int ) ;
 int XShmPutImage (int ,int ,int ,TYPE_1__*,int ,int ,int ,int ,int,int ,int ) ;
 int XSync (int ,int ) ;
 int X_display ;
 int X_gc ;
 int X_height ;
 int X_mainWindow ;
 int X_width ;
 scalar_t__ devparm ;
 scalar_t__ doShm ;
 TYPE_1__* image ;
 int multiply ;
 int** screens ;
 int shmFinished ;

void I_FinishUpdate (void)
{

    static int lasttic;
    int tics;
    int i;



    if (devparm)
    {

 i = I_GetTime();
 tics = i - lasttic;
 lasttic = i;
 if (tics > 20) tics = 20;

 for (i=0 ; i<tics*2 ; i+=2)
     screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0xff;
 for ( ; i<20*2 ; i+=2)
     screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0x0;

    }


    if (multiply == 2)
    {
 unsigned int *olineptrs[2];
 unsigned int *ilineptr;
 int x, y, i;
 unsigned int twoopixels;
 unsigned int twomoreopixels;
 unsigned int fouripixels;

 ilineptr = (unsigned int *) (screens[0]);
 for (i=0 ; i<2 ; i++)
     olineptrs[i] = (unsigned int *) &image->data[i*X_width];

 y = SCREENHEIGHT;
 while (y--)
 {
     x = SCREENWIDTH;
     do
     {
  fouripixels = *ilineptr++;
  twoopixels = (fouripixels & 0xff000000)
      | ((fouripixels>>8) & 0xffff00)
      | ((fouripixels>>16) & 0xff);
  twomoreopixels = ((fouripixels<<16) & 0xff000000)
      | ((fouripixels<<8) & 0xffff00)
      | (fouripixels & 0xff);






  *olineptrs[0]++ = twomoreopixels;
  *olineptrs[1]++ = twomoreopixels;
  *olineptrs[0]++ = twoopixels;
  *olineptrs[1]++ = twoopixels;

     } while (x-=4);
     olineptrs[0] += X_width/4;
     olineptrs[1] += X_width/4;
 }

    }
    else if (multiply == 3)
    {
 unsigned int *olineptrs[3];
 unsigned int *ilineptr;
 int x, y, i;
 unsigned int fouropixels[3];
 unsigned int fouripixels;

 ilineptr = (unsigned int *) (screens[0]);
 for (i=0 ; i<3 ; i++)
     olineptrs[i] = (unsigned int *) &image->data[i*X_width];

 y = SCREENHEIGHT;
 while (y--)
 {
     x = SCREENWIDTH;
     do
     {
  fouripixels = *ilineptr++;
  fouropixels[0] = (fouripixels & 0xff000000)
      | ((fouripixels>>8) & 0xff0000)
      | ((fouripixels>>16) & 0xffff);
  fouropixels[1] = ((fouripixels<<8) & 0xff000000)
      | (fouripixels & 0xffff00)
      | ((fouripixels>>8) & 0xff);
  fouropixels[2] = ((fouripixels<<16) & 0xffff0000)
      | ((fouripixels<<8) & 0xff00)
      | (fouripixels & 0xff);
  *olineptrs[0]++ = fouropixels[2];
  *olineptrs[1]++ = fouropixels[2];
  *olineptrs[2]++ = fouropixels[2];
  *olineptrs[0]++ = fouropixels[1];
  *olineptrs[1]++ = fouropixels[1];
  *olineptrs[2]++ = fouropixels[1];
  *olineptrs[0]++ = fouropixels[0];
  *olineptrs[1]++ = fouropixels[0];
  *olineptrs[2]++ = fouropixels[0];

     } while (x-=4);
     olineptrs[0] += 2*X_width/4;
     olineptrs[1] += 2*X_width/4;
     olineptrs[2] += 2*X_width/4;
 }

    }
    else if (multiply == 4)
    {

 void Expand4(unsigned *, double *);
   Expand4 ((unsigned *)(screens[0]), (double *) (image->data));
    }

    if (doShm)
    {

 if (!XShmPutImage( X_display,
    X_mainWindow,
    X_gc,
    image,
    0, 0,
    0, 0,
    X_width, X_height,
    True ))
     I_Error("XShmPutImage() failed\n");


 shmFinished = 0;
 do
 {
     I_GetEvent();
 } while (!shmFinished);

    }
    else
    {


 XPutImage( X_display,
   X_mainWindow,
   X_gc,
   image,
   0, 0,
   0, 0,
   X_width, X_height );


 XSync(X_display, False);

    }

}
