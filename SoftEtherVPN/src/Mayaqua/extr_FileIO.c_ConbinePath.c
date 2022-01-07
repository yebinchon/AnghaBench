
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int dst_w ;
typedef int UINT ;


 int ConbinePathW (int *,int,int *,int *) ;
 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int MAX_PATH ;
 int UniToStr (char*,int ,int *) ;

void ConbinePath(char *dst, UINT size, char *dirname, char *filename)
{
 wchar_t dst_w[MAX_PATH];
 wchar_t *dirname_w = CopyStrToUni(dirname);
 wchar_t *filename_w = CopyStrToUni(filename);

 ConbinePathW(dst_w, sizeof(dst_w), dirname_w, filename_w);

 Free(dirname_w);
 Free(filename_w);

 UniToStr(dst, size, dst_w);
}
