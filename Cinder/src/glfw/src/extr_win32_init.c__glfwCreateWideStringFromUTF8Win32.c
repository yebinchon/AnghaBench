
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * calloc (int,int) ;
 int free (int *) ;

WCHAR* _glfwCreateWideStringFromUTF8Win32(const char* source)
{
    WCHAR* target;
    int length;

    length = MultiByteToWideChar(CP_UTF8, 0, source, -1, ((void*)0), 0);
    if (!length)
        return ((void*)0);

    target = calloc(length, sizeof(WCHAR));

    if (!MultiByteToWideChar(CP_UTF8, 0, source, -1, target, length))
    {
        free(target);
        return ((void*)0);
    }

    return target;
}
