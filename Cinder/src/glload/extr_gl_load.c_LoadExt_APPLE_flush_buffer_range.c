
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC ;
typedef scalar_t__ PFNGLBUFFERPARAMETERIAPPLEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBufferParameteriAPPLE ;
 scalar_t__ _funcptr_glFlushMappedBufferRangeAPPLE ;

__attribute__((used)) static int LoadExt_APPLE_flush_buffer_range()
{
 int numFailed = 0;
 _funcptr_glBufferParameteriAPPLE = (PFNGLBUFFERPARAMETERIAPPLEPROC)IntGetProcAddress("glBufferParameteriAPPLE");
 if(!_funcptr_glBufferParameteriAPPLE) ++numFailed;
 _funcptr_glFlushMappedBufferRangeAPPLE = (PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC)IntGetProcAddress("glFlushMappedBufferRangeAPPLE");
 if(!_funcptr_glFlushMappedBufferRangeAPPLE) ++numFailed;
 return numFailed;
}
