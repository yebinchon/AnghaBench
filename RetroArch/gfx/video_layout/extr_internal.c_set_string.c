
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strdup (char const*) ;

void set_string(char **string, const char *src)
{
   free(*string);
   *string = src ? strdup(src) : ((void*)0);
}
