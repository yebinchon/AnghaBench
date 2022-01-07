
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFLUSHRASTERSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFlushRasterSGIX ;

__attribute__((used)) static int LoadExt_SGIX_flush_raster()
{
 int numFailed = 0;
 _funcptr_glFlushRasterSGIX = (PFNGLFLUSHRASTERSGIXPROC)IntGetProcAddress("glFlushRasterSGIX");
 if(!_funcptr_glFlushRasterSGIX) ++numFailed;
 return numFailed;
}
