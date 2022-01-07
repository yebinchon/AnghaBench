
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWTEXTURENVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawTextureNV ;

__attribute__((used)) static int LoadExt_NV_draw_texture()
{
 int numFailed = 0;
 _funcptr_glDrawTextureNV = (PFNGLDRAWTEXTURENVPROC)IntGetProcAddress("glDrawTextureNV");
 if(!_funcptr_glDrawTextureNV) ++numFailed;
 return numFailed;
}
