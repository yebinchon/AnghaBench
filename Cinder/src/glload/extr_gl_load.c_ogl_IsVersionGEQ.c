
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_majorVersion ;
 int g_minorVersion ;

int ogl_IsVersionGEQ( int testMajorVersion, int testMinorVersion )
{
 if(g_majorVersion > testMajorVersion) return 1;
 if(g_majorVersion < testMajorVersion) return 0;
 if(g_minorVersion >= testMinorVersion) return 1;
 return 0;
}
