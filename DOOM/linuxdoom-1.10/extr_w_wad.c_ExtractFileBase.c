
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,char*) ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;
 int toupper (int) ;

void
ExtractFileBase
( char* path,
  char* dest )
{
    char* src;
    int length;

    src = path + strlen(path) - 1;


    while (src != path
    && *(src-1) != '\\'
    && *(src-1) != '/')
    {
 src--;
    }


    memset (dest,0,8);
    length = 0;

    while (*src && *src != '.')
    {
 if (++length == 9)
     I_Error ("Filename base of %s >8 chars",path);

 *dest++ = toupper((int)*src++);
    }
}
