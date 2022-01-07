
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUFFEREXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexBufferEXT ;

__attribute__((used)) static int LoadExt_EXT_texture_buffer_object()
{
 int numFailed = 0;
 _funcptr_glTexBufferEXT = (PFNGLTEXBUFFEREXTPROC)IntGetProcAddress("glTexBufferEXT");
 if(!_funcptr_glTexBufferEXT) ++numFailed;
 return numFailed;
}
