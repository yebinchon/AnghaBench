
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFOGCOORDPOINTEREXTPROC ;
typedef scalar_t__ PFNGLFOGCOORDFVEXTPROC ;
typedef scalar_t__ PFNGLFOGCOORDFEXTPROC ;
typedef scalar_t__ PFNGLFOGCOORDDVEXTPROC ;
typedef scalar_t__ PFNGLFOGCOORDDEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFogCoordPointerEXT ;
 scalar_t__ _funcptr_glFogCoorddEXT ;
 scalar_t__ _funcptr_glFogCoorddvEXT ;
 scalar_t__ _funcptr_glFogCoordfEXT ;
 scalar_t__ _funcptr_glFogCoordfvEXT ;

__attribute__((used)) static int LoadExt_EXT_fog_coord()
{
 int numFailed = 0;
 _funcptr_glFogCoordPointerEXT = (PFNGLFOGCOORDPOINTEREXTPROC)IntGetProcAddress("glFogCoordPointerEXT");
 if(!_funcptr_glFogCoordPointerEXT) ++numFailed;
 _funcptr_glFogCoorddEXT = (PFNGLFOGCOORDDEXTPROC)IntGetProcAddress("glFogCoorddEXT");
 if(!_funcptr_glFogCoorddEXT) ++numFailed;
 _funcptr_glFogCoorddvEXT = (PFNGLFOGCOORDDVEXTPROC)IntGetProcAddress("glFogCoorddvEXT");
 if(!_funcptr_glFogCoorddvEXT) ++numFailed;
 _funcptr_glFogCoordfEXT = (PFNGLFOGCOORDFEXTPROC)IntGetProcAddress("glFogCoordfEXT");
 if(!_funcptr_glFogCoordfEXT) ++numFailed;
 _funcptr_glFogCoordfvEXT = (PFNGLFOGCOORDFVEXTPROC)IntGetProcAddress("glFogCoordfvEXT");
 if(!_funcptr_glFogCoordfvEXT) ++numFailed;
 return numFailed;
}
