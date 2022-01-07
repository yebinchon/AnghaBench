
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int ,int ) ;
 char* av_malloc (int) ;

__attribute__((used)) static char *dup_wchar_to_utf8(wchar_t *w)
{
    char *s = ((void*)0);
    int l = WideCharToMultiByte(CP_UTF8, 0, w, -1, 0, 0, 0, 0);
    s = av_malloc(l);
    if (s)
        WideCharToMultiByte(CP_UTF8, 0, w, -1, s, l, 0, 0);
    return s;
}
