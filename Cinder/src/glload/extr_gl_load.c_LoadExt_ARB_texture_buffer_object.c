
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUFFERARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexBufferARB ;

__attribute__((used)) static int LoadExt_ARB_texture_buffer_object()
{
 int numFailed = 0;
 _funcptr_glTexBufferARB = (PFNGLTEXBUFFERARBPROC)IntGetProcAddress("glTexBufferARB");
 if(!_funcptr_glTexBufferARB) ++numFailed;
 return numFailed;
}
