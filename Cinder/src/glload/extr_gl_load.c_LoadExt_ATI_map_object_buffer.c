
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLUNMAPOBJECTBUFFERATIPROC ;
typedef scalar_t__ PFNGLMAPOBJECTBUFFERATIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glMapObjectBufferATI ;
 scalar_t__ _funcptr_glUnmapObjectBufferATI ;

__attribute__((used)) static int LoadExt_ATI_map_object_buffer()
{
 int numFailed = 0;
 _funcptr_glMapObjectBufferATI = (PFNGLMAPOBJECTBUFFERATIPROC)IntGetProcAddress("glMapObjectBufferATI");
 if(!_funcptr_glMapObjectBufferATI) ++numFailed;
 _funcptr_glUnmapObjectBufferATI = (PFNGLUNMAPOBJECTBUFFERATIPROC)IntGetProcAddress("glUnmapObjectBufferATI");
 if(!_funcptr_glUnmapObjectBufferATI) ++numFailed;
 return numFailed;
}
