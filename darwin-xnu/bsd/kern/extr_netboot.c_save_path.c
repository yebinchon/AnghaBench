
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kalloc (int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
save_path(char * * str_p, int * length_p, char * path)
{
    *length_p = strlen(path) + 1;
    *str_p = (char *)kalloc(*length_p);
    strlcpy(*str_p, path, *length_p);
    return;
}
