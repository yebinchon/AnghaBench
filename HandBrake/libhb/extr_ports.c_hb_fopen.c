
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ errno_t ;
typedef int FILE ;


 int CP_UTF8 ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ _wfopen_s (int **,int *,int *) ;
 int * fopen (char const*,char const*) ;

FILE * hb_fopen(const char *path, const char *mode)
{
    return fopen(path, mode);

}
