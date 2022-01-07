
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBUFFERSTORAGEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBufferStorage ;

__attribute__((used)) static int LoadExt_ARB_buffer_storage()
{
 int numFailed = 0;
 _funcptr_glBufferStorage = (PFNGLBUFFERSTORAGEPROC)IntGetProcAddress("glBufferStorage");
 if(!_funcptr_glBufferStorage) ++numFailed;
 return numFailed;
}
