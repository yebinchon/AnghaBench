
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*,char const*) ;
 int LoadFile (char*,void**) ;
 int LoadTGABuffer (int *,int **,int*,int*) ;

void LoadTGA (const char *name, byte **pixels, int *width, int *height)
{
 byte *buffer;
  int nLen;



 nLen = LoadFile ( ( char * ) name, (void **)&buffer);
 if (nLen == -1)
  {
  Error ("Couldn't read %s", name);
  }

  LoadTGABuffer(buffer, pixels, width, height);

}
