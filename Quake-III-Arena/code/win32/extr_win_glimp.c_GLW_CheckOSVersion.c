
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vinfo ;
typedef void* qboolean ;
struct TYPE_7__ {void* allowdisplaydepthchange; } ;
struct TYPE_6__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_5__ {int dwOSVersionInfoSize; int dwMajorVersion; scalar_t__ dwPlatformId; int dwBuildNumber; } ;
typedef TYPE_1__ OSVERSIONINFO ;


 scalar_t__ GetVersionEx (TYPE_1__*) ;
 scalar_t__ LOWORD (int ) ;
 scalar_t__ OSR2_BUILD_NUMBER ;
 int PRINT_ALL ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 scalar_t__ VER_PLATFORM_WIN32_WINDOWS ;
 TYPE_3__ glw_state ;
 void* qfalse ;
 void* qtrue ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;

__attribute__((used)) static qboolean GLW_CheckOSVersion( void )
{


 OSVERSIONINFO vinfo;

 vinfo.dwOSVersionInfoSize = sizeof(vinfo);

 glw_state.allowdisplaydepthchange = qfalse;

 if ( GetVersionEx( &vinfo) )
 {
  if ( vinfo.dwMajorVersion > 4 )
  {
   glw_state.allowdisplaydepthchange = qtrue;
  }
  else if ( vinfo.dwMajorVersion == 4 )
  {
   if ( vinfo.dwPlatformId == VER_PLATFORM_WIN32_NT )
   {
    glw_state.allowdisplaydepthchange = qtrue;
   }
   else if ( vinfo.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS )
   {
    if ( LOWORD( vinfo.dwBuildNumber ) >= 1111 )
    {
     glw_state.allowdisplaydepthchange = qtrue;
    }
   }
  }
 }
 else
 {
  ri.Printf( PRINT_ALL, "GLW_CheckOSVersion() - GetVersionEx failed\n" );
  return qfalse;
 }

 return qtrue;
}
