
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMATRIXINDEXUSVARBPROC ;
typedef scalar_t__ PFNGLMATRIXINDEXUIVARBPROC ;
typedef scalar_t__ PFNGLMATRIXINDEXUBVARBPROC ;
typedef scalar_t__ PFNGLMATRIXINDEXPOINTERARBPROC ;
typedef scalar_t__ PFNGLCURRENTPALETTEMATRIXARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCurrentPaletteMatrixARB ;
 scalar_t__ _funcptr_glMatrixIndexPointerARB ;
 scalar_t__ _funcptr_glMatrixIndexubvARB ;
 scalar_t__ _funcptr_glMatrixIndexuivARB ;
 scalar_t__ _funcptr_glMatrixIndexusvARB ;

__attribute__((used)) static int LoadExt_ARB_matrix_palette()
{
 int numFailed = 0;
 _funcptr_glCurrentPaletteMatrixARB = (PFNGLCURRENTPALETTEMATRIXARBPROC)IntGetProcAddress("glCurrentPaletteMatrixARB");
 if(!_funcptr_glCurrentPaletteMatrixARB) ++numFailed;
 _funcptr_glMatrixIndexPointerARB = (PFNGLMATRIXINDEXPOINTERARBPROC)IntGetProcAddress("glMatrixIndexPointerARB");
 if(!_funcptr_glMatrixIndexPointerARB) ++numFailed;
 _funcptr_glMatrixIndexubvARB = (PFNGLMATRIXINDEXUBVARBPROC)IntGetProcAddress("glMatrixIndexubvARB");
 if(!_funcptr_glMatrixIndexubvARB) ++numFailed;
 _funcptr_glMatrixIndexuivARB = (PFNGLMATRIXINDEXUIVARBPROC)IntGetProcAddress("glMatrixIndexuivARB");
 if(!_funcptr_glMatrixIndexuivARB) ++numFailed;
 _funcptr_glMatrixIndexusvARB = (PFNGLMATRIXINDEXUSVARBPROC)IntGetProcAddress("glMatrixIndexusvARB");
 if(!_funcptr_glMatrixIndexusvARB) ++numFailed;
 return numFailed;
}
