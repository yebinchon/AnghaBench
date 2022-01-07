
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressed_size; } ;
typedef TYPE_1__ unz_file_info ;
typedef int unzFile ;
typedef int gzFile ;


 int UNZ_OK ;
 scalar_t__ check_zip (char*) ;
 int gzclose (int *) ;
 int * gzopen (char*,char*) ;
 int gzread (int *,unsigned char*,int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int unzClose (int *) ;
 int unzCloseCurrentFile (int *) ;
 int unzGetCurrentFileInfo (int *,TYPE_1__*,char*,int,int *,int ,int *,int ) ;
 int unzGoToFirstFile (int *) ;
 int * unzOpen (char*) ;
 int unzOpenCurrentFile (int *) ;
 int unzReadCurrentFile (int *,unsigned char*,int) ;

int load_archive(char *filename, unsigned char *buffer, int maxsize, char *extension)
{
  int size = 0;

  if(check_zip(filename))
  {
    unz_file_info info;
    int ret = 0;
    char fname[256];


    unzFile *fd = unzOpen(filename);
    if (!fd) return 0;


    ret = unzGoToFirstFile(fd);
    if(ret != UNZ_OK)
    {
      unzClose(fd);
      return 0;
    }


    ret = unzGetCurrentFileInfo(fd, &info, fname, 256, ((void*)0), 0, ((void*)0), 0);
    if(ret != UNZ_OK)
    {
      unzClose(fd);
      return 0;
    }


    if (extension)
    {
      strncpy(extension, &fname[strlen(fname) - 3], 3);
      extension[3] = 0;
    }


    ret = unzOpenCurrentFile(fd);
    if(ret != UNZ_OK)
    {
      unzClose(fd);
      return 0;
    }


    size = info.uncompressed_size;
    if(size > maxsize)
    {
      size = maxsize;
    }


    ret = unzReadCurrentFile(fd, buffer, size);
    if(ret != size)
    {
      unzCloseCurrentFile(fd);
      unzClose(fd);
      return 0;
    }


    ret = unzCloseCurrentFile(fd);
    if(ret != UNZ_OK)
    {
      unzClose(fd);
      return 0;
    }


    ret = unzClose(fd);
    if(ret != UNZ_OK) return 0;
  }
  else
  {

    gzFile *gd = gzopen(filename, "rb");
    if (!gd) return 0;


    size = gzread(gd, buffer, maxsize);


    if (extension)
    {
      strncpy(extension, &filename[strlen(filename) - 3], 3);
      extension[3] = 0;
    }


    gzclose(gd);
  }


  return size;
}
