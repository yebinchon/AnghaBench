#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bih ;
struct TYPE_4__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  TYPE_1__ BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  CBM_INIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FrameWnd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  READPNG_24 ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (void*,char const*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static HBITMAP FUNC8(const char *fname, int is_480)
{
  BITMAPINFOHEADER bih;
  HBITMAP bmp;
  void *bmem;
  int ret;

  bmem = FUNC3(1, is_480 ? 480*240*3 : 320*240*3);
  if (bmem == NULL) return NULL;
  ret = FUNC7(bmem, fname, READPNG_24, is_480 ? 480 : 320, 240);
  if (ret != 0) {
    FUNC4(bmem);
    return NULL;
  }

  FUNC6(&bih, 0, sizeof(bih));
  bih.biSize = sizeof(bih);
  bih.biWidth = is_480 ? 480 : 320;
  bih.biHeight = -240;
  bih.biPlanes = 1;
  bih.biBitCount = 24;
  bih.biCompression = BI_RGB;
  bmp = FUNC0(FUNC1(FrameWnd), &bih, CBM_INIT, bmem, (BITMAPINFO *)&bih, 0);
  if (bmp == NULL)
    FUNC5("CreateDIBitmap failed with %i", FUNC2());

  FUNC4(bmem);
  return bmp;
}