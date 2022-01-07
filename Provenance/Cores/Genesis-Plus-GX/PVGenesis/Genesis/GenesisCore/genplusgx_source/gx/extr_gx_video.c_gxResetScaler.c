
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int xshift; int yshift; scalar_t__ render; int ntsc; int bilinear; } ;
struct TYPE_3__ {int fbWidth; int viWidth; int viXOrigin; int efbHeight; int viHeight; } ;


 int DCFlushRange (int*,int) ;
 int GX_InvVtxCache () ;
 TYPE_2__ config ;
 int gxSetAspectRatio (int*,int*) ;
 TYPE_1__* rmode ;
 int* square ;

__attribute__((used)) static void gxResetScaler(u32 width)
{
  int xscale = 0;
  int yscale = 0;
  int offset = 0;


  gxSetAspectRatio(&xscale, &yscale);


  rmode->fbWidth = 640;


  if (!config.bilinear && !config.ntsc)
  {
    if ((width <= 320) && (width <= xscale))
      rmode->fbWidth = width * 2;
    else if (width <= 640)
      rmode->fbWidth = width;
  }


  if ((xscale * 2) > rmode->fbWidth)
  {

    if (xscale > 360)
    {

      offset = ((xscale - 360) * rmode->fbWidth) / rmode->viWidth;


      xscale = 360;
    }


    rmode->viWidth = xscale * 2;
    rmode->viXOrigin = (720 - (xscale * 2)) / 2;


    xscale = (rmode->fbWidth / 2);


    if (offset)
    {

      if (!config.bilinear && !config.ntsc)
        rmode->fbWidth -= (offset * 2);


      else
        xscale += offset;
    }
  }
  else
  {

    rmode->viWidth = rmode->fbWidth;
    rmode->viXOrigin = (720 - rmode->fbWidth) / 2;
  }


  int xshift = (config.xshift * rmode->fbWidth) / rmode->viWidth;
  int yshift = (config.yshift * rmode->efbHeight) / rmode->viHeight;


  if (config.render)
  {
    yscale = yscale * 2;
  }


  square[6] = square[3] = xshift + xscale;
  square[0] = square[9] = xshift - xscale;
  square[4] = square[1] = yshift + yscale;
  square[7] = square[10] = yshift - yscale;
  DCFlushRange(square, 32);
  GX_InvVtxCache();
}
