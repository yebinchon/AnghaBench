
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUFFERRANGEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexBufferRange ;

__attribute__((used)) static int LoadExt_ARB_texture_buffer_range()
{
 int numFailed = 0;
 _funcptr_glTexBufferRange = (PFNGLTEXBUFFERRANGEPROC)IntGetProcAddress("glTexBufferRange");
 if(!_funcptr_glTexBufferRange) ++numFailed;
 return numFailed;
}
