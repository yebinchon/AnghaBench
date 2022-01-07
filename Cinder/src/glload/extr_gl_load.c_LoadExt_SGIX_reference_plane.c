
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLREFERENCEPLANESGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glReferencePlaneSGIX ;

__attribute__((used)) static int LoadExt_SGIX_reference_plane()
{
 int numFailed = 0;
 _funcptr_glReferencePlaneSGIX = (PFNGLREFERENCEPLANESGIXPROC)IntGetProcAddress("glReferencePlaneSGIX");
 if(!_funcptr_glReferencePlaneSGIX) ++numFailed;
 return numFailed;
}
