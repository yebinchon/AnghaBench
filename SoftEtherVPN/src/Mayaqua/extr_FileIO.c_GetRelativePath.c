
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int fullpath_w ;
typedef int dst_w ;
typedef int basepath_w ;
typedef int UINT ;


 int GetRelativePathW (int *,int,int *,int *) ;
 int MAX_SIZE ;
 int StrToUni (int *,int,char*) ;
 int UniToStr (char*,int ,int *) ;

bool GetRelativePath(char *dst, UINT size, char *fullpath, char *basepath)
{
 wchar_t dst_w[MAX_SIZE];
 wchar_t fullpath_w[MAX_SIZE];
 wchar_t basepath_w[MAX_SIZE];
 bool ret;

 if (dst == ((void*)0) || fullpath == ((void*)0) || basepath == ((void*)0))
 {
  return 0;
 }

 StrToUni(fullpath_w, sizeof(fullpath_w), fullpath);
 StrToUni(basepath_w, sizeof(basepath_w), basepath);

 ret = GetRelativePathW(dst_w, sizeof(dst_w), fullpath_w, basepath_w);
 if (ret == 0)
 {
  return 0;
 }

 UniToStr(dst, size, dst_w);

 return 1;
}
