
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOLYGONOFFSETEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPolygonOffsetEXT ;

__attribute__((used)) static int LoadExt_EXT_polygon_offset()
{
 int numFailed = 0;
 _funcptr_glPolygonOffsetEXT = (PFNGLPOLYGONOFFSETEXTPROC)IntGetProcAddress("glPolygonOffsetEXT");
 if(!_funcptr_glPolygonOffsetEXT) ++numFailed;
 return numFailed;
}
