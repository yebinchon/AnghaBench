
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDEPTHBOUNDSEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDepthBoundsEXT ;

__attribute__((used)) static int LoadExt_EXT_depth_bounds_test()
{
 int numFailed = 0;
 _funcptr_glDepthBoundsEXT = (PFNGLDEPTHBOUNDSEXTPROC)IntGetProcAddress("glDepthBoundsEXT");
 if(!_funcptr_glDepthBoundsEXT) ++numFailed;
 return numFailed;
}
