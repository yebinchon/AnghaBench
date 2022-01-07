
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int ,char*,char*,scalar_t__) ;
 int FS_FOpenFileRead (char*,int*,int ) ;
 int MAX_OSPATH ;
 scalar_t__* demo_protocols ;
 int qtrue ;

__attribute__((used)) static void CL_WalkDemoExt(char *arg, char *name, int *demofile)
{
 int i = 0;
 *demofile = 0;
 while(demo_protocols[i])
 {
  Com_sprintf (name, MAX_OSPATH, "demos/%s.dm_%d", arg, demo_protocols[i]);
  FS_FOpenFileRead( name, demofile, qtrue );
  if (*demofile)
  {
   Com_Printf("Demo file: %s\n", name);
   break;
  }
  else
   Com_Printf("Not found: %s\n", name);
  i++;
 }
}
