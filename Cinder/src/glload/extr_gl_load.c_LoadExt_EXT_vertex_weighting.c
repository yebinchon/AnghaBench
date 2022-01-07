
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXWEIGHTPOINTEREXTPROC ;
typedef scalar_t__ PFNGLVERTEXWEIGHTFVEXTPROC ;
typedef scalar_t__ PFNGLVERTEXWEIGHTFEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glVertexWeightPointerEXT ;
 scalar_t__ _funcptr_glVertexWeightfEXT ;
 scalar_t__ _funcptr_glVertexWeightfvEXT ;

__attribute__((used)) static int LoadExt_EXT_vertex_weighting()
{
 int numFailed = 0;
 _funcptr_glVertexWeightPointerEXT = (PFNGLVERTEXWEIGHTPOINTEREXTPROC)IntGetProcAddress("glVertexWeightPointerEXT");
 if(!_funcptr_glVertexWeightPointerEXT) ++numFailed;
 _funcptr_glVertexWeightfEXT = (PFNGLVERTEXWEIGHTFEXTPROC)IntGetProcAddress("glVertexWeightfEXT");
 if(!_funcptr_glVertexWeightfEXT) ++numFailed;
 _funcptr_glVertexWeightfvEXT = (PFNGLVERTEXWEIGHTFVEXTPROC)IntGetProcAddress("glVertexWeightfvEXT");
 if(!_funcptr_glVertexWeightfvEXT) ++numFailed;
 return numFailed;
}
