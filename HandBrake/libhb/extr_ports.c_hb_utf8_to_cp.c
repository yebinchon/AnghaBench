
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int GetACP () ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 void* calloc (int,int) ;
 int free (int *) ;
 char* strdup (char const*) ;

char * hb_utf8_to_cp(const char *src)
{
    char *dst = ((void*)0);
    dst = strdup(src);


    return dst;
}
