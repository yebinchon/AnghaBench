
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int FileCopyExW (int *,int *,int) ;

bool FileCopyW(wchar_t *src, wchar_t *dst)
{
 return FileCopyExW(src, dst, 1);
}
