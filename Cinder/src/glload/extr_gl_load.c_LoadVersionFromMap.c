
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int majorVersion; int minorVersion; int compatibilityProfile; int (* LoadVersion ) () ;} ;


 int g_numVersionMapEntries ;
 TYPE_1__* g_versionMapTable ;
 int stub1 () ;

__attribute__((used)) static int LoadVersionFromMap(int major, int minor, int compatibilityProfile)
{
 int loop = 0;
 for(; loop < g_numVersionMapEntries; ++loop)
 {
  if(
   (g_versionMapTable[loop].majorVersion == major) &&
   (g_versionMapTable[loop].minorVersion == minor) &&
   (g_versionMapTable[loop].compatibilityProfile == compatibilityProfile))
  {
   return g_versionMapTable[loop].LoadVersion();
  }
 }

 return -1;
}
