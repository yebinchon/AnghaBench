
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;
 char* calloc (int,int) ;
 int free (char*) ;

char* _glfwCreateUTF8FromWideStringWin32(const WCHAR* source)
{
    char* target;
    int length;

    length = WideCharToMultiByte(CP_UTF8, 0, source, -1, ((void*)0), 0, ((void*)0), ((void*)0));
    if (!length)
        return ((void*)0);

    target = calloc(length, 1);

    if (!WideCharToMultiByte(CP_UTF8, 0, source, -1, target, length, ((void*)0), ((void*)0)))
    {
        free(target);
        return ((void*)0);
    }

    return target;
}
