
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZIP_PACKER ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;


 scalar_t__ IsEmptyStr (char*) ;
 int ZipAddFileData (int *,void*,int ,scalar_t__) ;
 int ZipAddFileStart (int *,char*,scalar_t__,int ,scalar_t__) ;

void ZipAddFileSimple(ZIP_PACKER *p, char *name, UINT64 dt, UINT attribute, void *data, UINT size)
{

 if (p == ((void*)0) || IsEmptyStr(name) || (size != 0 && data == ((void*)0)))
 {
  return;
 }

 ZipAddFileStart(p, name, size, dt, attribute);
 ZipAddFileData(p, data, 0, size);
}
