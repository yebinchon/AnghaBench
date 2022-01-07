
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int ZIP_PACKER ;
typedef int UINT64 ;
typedef int UINT ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int ZipAddRealFileW (int *,char*,int ,int ,int *) ;

bool ZipAddRealFile(ZIP_PACKER *p, char *name, UINT64 dt, UINT attribute, char *srcname)
{
 bool ret = 0;
 wchar_t *s;

 s = CopyStrToUni(srcname);

 ret = ZipAddRealFileW(p, name, dt, attribute, s);

 Free(s);

 return ret;
}
