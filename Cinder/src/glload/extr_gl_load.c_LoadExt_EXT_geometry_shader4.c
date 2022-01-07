
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMPARAMETERIEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glProgramParameteriEXT ;

__attribute__((used)) static int LoadExt_EXT_geometry_shader4()
{
 int numFailed = 0;
 _funcptr_glProgramParameteriEXT = (PFNGLPROGRAMPARAMETERIEXTPROC)IntGetProcAddress("glProgramParameteriEXT");
 if(!_funcptr_glProgramParameteriEXT) ++numFailed;
 return numFailed;
}
