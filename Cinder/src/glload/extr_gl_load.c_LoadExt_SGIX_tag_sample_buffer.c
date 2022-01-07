
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTAGSAMPLEBUFFERSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTagSampleBufferSGIX ;

__attribute__((used)) static int LoadExt_SGIX_tag_sample_buffer()
{
 int numFailed = 0;
 _funcptr_glTagSampleBufferSGIX = (PFNGLTAGSAMPLEBUFFERSGIXPROC)IntGetProcAddress("glTagSampleBufferSGIX");
 if(!_funcptr_glTagSampleBufferSGIX) ++numFailed;
 return numFailed;
}
