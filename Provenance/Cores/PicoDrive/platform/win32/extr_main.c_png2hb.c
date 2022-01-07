
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bih ;
struct TYPE_4__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
typedef int * HBITMAP ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef int BITMAPINFO ;


 int BI_RGB ;
 int CBM_INIT ;
 int * CreateDIBitmap (int ,TYPE_1__*,int ,void*,int *,int ) ;
 int FrameWnd ;
 int GetDC (int ) ;
 int GetLastError () ;
 int READPNG_24 ;
 void* calloc (int,int) ;
 int free (void*) ;
 int lprintf (char*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int readpng (void*,char const*,int ,int,int) ;

__attribute__((used)) static HBITMAP png2hb(const char *fname, int is_480)
{
  BITMAPINFOHEADER bih;
  HBITMAP bmp;
  void *bmem;
  int ret;

  bmem = calloc(1, is_480 ? 480*240*3 : 320*240*3);
  if (bmem == ((void*)0)) return ((void*)0);
  ret = readpng(bmem, fname, READPNG_24, is_480 ? 480 : 320, 240);
  if (ret != 0) {
    free(bmem);
    return ((void*)0);
  }

  memset(&bih, 0, sizeof(bih));
  bih.biSize = sizeof(bih);
  bih.biWidth = is_480 ? 480 : 320;
  bih.biHeight = -240;
  bih.biPlanes = 1;
  bih.biBitCount = 24;
  bih.biCompression = BI_RGB;
  bmp = CreateDIBitmap(GetDC(FrameWnd), &bih, CBM_INIT, bmem, (BITMAPINFO *)&bih, 0);
  if (bmp == ((void*)0))
    lprintf("CreateDIBitmap failed with %i", GetLastError());

  free(bmem);
  return bmp;
}
