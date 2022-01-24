#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int xshift; int yshift; scalar_t__ render; int /*<<< orphan*/  ntsc; int /*<<< orphan*/  bilinear; } ;
struct TYPE_3__ {int fbWidth; int viWidth; int viXOrigin; int efbHeight; int viHeight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 TYPE_1__* rmode ; 
 int* square ; 

__attribute__((used)) static void FUNC3(u32 width)
{
  int xscale  = 0;
  int yscale  = 0;
  int offset  = 0;

  /* retrieve screen aspect ratio */
  FUNC2(&xscale, &yscale);

  /* default EFB width */
  rmode->fbWidth = 640;

  /* no filtering, disable GX horizontal scaling */
  if (!config.bilinear && !config.ntsc)
  {
    if ((width <= 320) && (width <= xscale))
      rmode->fbWidth = width * 2;
    else if (width <= 640)
      rmode->fbWidth = width;
  }

  /* configure VI width */
  if ((xscale * 2) > rmode->fbWidth)
  {
    /* max width = 720 pixels */
    if (xscale > 360)
    {
      /* save offset for later */
      offset = ((xscale - 360) * rmode->fbWidth) / rmode->viWidth;

      /* maximal width */
      xscale = 360;
    }

    /* enable VI upscaling */
    rmode->viWidth = xscale * 2;
    rmode->viXOrigin = (720 - (xscale * 2)) / 2;

    /* default GX horizontal scaling */
    xscale = (rmode->fbWidth / 2);

    /* handle additional upscaling */
    if (offset)
    {
      /* no filtering, reduce EFB width to increase VI upscaling */
      if (!config.bilinear && !config.ntsc)
        rmode->fbWidth -= (offset * 2);
      
      /* increase GX horizontal scaling */
      else
        xscale += offset;
    }
  }
  else
  {
    /* VI horizontal scaling is disabled */
    rmode->viWidth = rmode->fbWidth;
    rmode->viXOrigin = (720 - rmode->fbWidth) / 2;
  }

  /* Adjust screen position */
  int xshift = (config.xshift * rmode->fbWidth) / rmode->viWidth;
  int yshift = (config.yshift * rmode->efbHeight) / rmode->viHeight;

  /* Double Resolution modes (480i/576i/480p) */
  if (config.render)
  {
    yscale = yscale * 2;
  }

  /* Set GX scaler (Vertex Position matrix) */
  square[6] = square[3]  = xshift + xscale;
  square[0] = square[9]  = xshift - xscale;
  square[4] = square[1]  = yshift + yscale;
  square[7] = square[10] = yshift - yscale;
  FUNC0(square, 32);
  FUNC1();
}