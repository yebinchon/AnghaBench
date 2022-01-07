
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLIMPORTSYNCEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glImportSyncEXT ;

__attribute__((used)) static int LoadExt_EXT_x11_sync_object()
{
 int numFailed = 0;
 _funcptr_glImportSyncEXT = (PFNGLIMPORTSYNCEXTPROC)IntGetProcAddress("glImportSyncEXT");
 if(!_funcptr_glImportSyncEXT) ++numFailed;
 return numFailed;
}
