
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int dst_w ;
typedef int UINT ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int InnerFilePathW (int *,int,int *) ;
 int MAX_PATH ;
 int UniToStr (char*,int ,int *) ;

void InnerFilePath(char *dst, UINT size, char *src)
{
 wchar_t dst_w[MAX_PATH];
 wchar_t *src_w = CopyStrToUni(src);

 InnerFilePathW(dst_w, sizeof(dst_w), src_w);

 Free(src_w);

 UniToStr(dst, size, dst_w);
}
