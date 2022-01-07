
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWRANGEELEMENTSEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawRangeElementsEXT ;

__attribute__((used)) static int LoadExt_EXT_draw_range_elements()
{
 int numFailed = 0;
 _funcptr_glDrawRangeElementsEXT = (PFNGLDRAWRANGEELEMENTSEXTPROC)IntGetProcAddress("glDrawRangeElementsEXT");
 if(!_funcptr_glDrawRangeElementsEXT) ++numFailed;
 return numFailed;
}
