
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int memmove (char*,char*,int) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static void replacestr(char *line, const char *search, const char *replace)
{
    char *sp = ((void*)0);

    if ((sp = strstr(line, search)) == ((void*)0)) {
        return;
    }
    int search_len = strlen(search);
    int replace_len = strlen(replace);
    int tail_len = strlen(sp+search_len);

    memmove(sp+replace_len,sp+search_len,tail_len+1);
    memcpy(sp, replace, replace_len);



    if ((sp = strstr(line, search))) {
        replacestr(line, search, replace);
    }
}
