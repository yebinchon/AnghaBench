
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeSource (int *) ;
 int MAX_SOURCEFILES ;
 int qfalse ;
 int qtrue ;
 int ** sourceFiles ;

int PC_FreeSourceHandle(int handle)
{
 if (handle < 1 || handle >= MAX_SOURCEFILES)
  return qfalse;
 if (!sourceFiles[handle])
  return qfalse;

 FreeSource(sourceFiles[handle]);
 sourceFiles[handle] = ((void*)0);
 return qtrue;
}
