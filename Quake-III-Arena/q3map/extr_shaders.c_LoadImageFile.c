
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int byte ;


 scalar_t__ FileExists (char*) ;
 int LoadFileBlock (char*,int **) ;
 int PakLoadAnyFile (char*,int **) ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;

byte* LoadImageFile(char *filename, qboolean *bTGA)
{
  byte *buffer = ((void*)0);
  int nLen = 0;
  *bTGA = qtrue;
  if (FileExists(filename))
  {
    LoadFileBlock(filename, &buffer);
  }






  if ( buffer == ((void*)0))
  {
    nLen = strlen(filename);
    filename[nLen-3] = 'j';
    filename[nLen-2] = 'p';
    filename[nLen-1] = 'g';
    if (FileExists(filename))
    {
      LoadFileBlock(filename, &buffer);
    }






    if ( buffer )
    {
      *bTGA = qfalse;
    }
  }
  return buffer;
}
