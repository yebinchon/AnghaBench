
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int InternetFile; scalar_t__ FileSize; scalar_t__ IoReadFileSize; int hHttpFile; int io; } ;
typedef TYPE_1__ VI_FILE ;
typedef scalar_t__ UINT ;


 int FileRead (int ,void*,scalar_t__) ;
 scalar_t__ INFINITE ;
 int InternetReadFile (int ,void*,scalar_t__,scalar_t__*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;

UINT ViReadFile(VI_FILE *f, void *buf, UINT size)
{

 if (f == ((void*)0) || buf == ((void*)0))
 {
  return INFINITE;
 }

 if (f->InternetFile == 0)
 {
  UINT readsize = MIN(size, f->FileSize - f->IoReadFileSize);
  bool ret;

  if (readsize == 0)
  {
   return 0;
  }

  ret = FileRead(f->io, buf, readsize);

  if (ret == 0)
  {
   return INFINITE;
  }

  f->IoReadFileSize += readsize;

  return readsize;
 }
 else
 {
  UINT readsize = 0;

  if (InternetReadFile(f->hHttpFile, buf, size, &readsize) == 0)
  {
   return INFINITE;
  }

  return readsize;
 }
}
