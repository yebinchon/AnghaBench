
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 char* memchr (char const*,int ,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* strndup (char const*,size_t) ;

char * hb_strndup(const char * src, size_t len)
{
    return strndup(src, len);

}
