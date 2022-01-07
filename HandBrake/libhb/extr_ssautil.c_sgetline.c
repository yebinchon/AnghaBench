
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hb_strndup (char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

__attribute__((used)) static char * sgetline(char * str)
{
    char * eol;

    if (str == ((void*)0))
    {
        return ((void*)0);
    }


    eol = strchr(str, '\n');
    if (eol != ((void*)0))
    {
        if (eol > str && *(eol - 1) == '\r')
        {
            eol--;
        }
    }
    if (eol != ((void*)0))
    {
        return hb_strndup(str, eol - str);
    }
    else
    {
        return strdup(str);
    }
}
