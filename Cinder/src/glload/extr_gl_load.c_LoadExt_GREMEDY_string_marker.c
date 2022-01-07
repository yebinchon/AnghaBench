
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTRINGMARKERGREMEDYPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glStringMarkerGREMEDY ;

__attribute__((used)) static int LoadExt_GREMEDY_string_marker()
{
 int numFailed = 0;
 _funcptr_glStringMarkerGREMEDY = (PFNGLSTRINGMARKERGREMEDYPROC)IntGetProcAddress("glStringMarkerGREMEDY");
 if(!_funcptr_glStringMarkerGREMEDY) ++numFailed;
 return numFailed;
}
