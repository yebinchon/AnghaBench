
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlChar ;
struct TYPE_2__ {char* value; } ;
typedef TYPE_1__ parse_data_t ;


 char* realloc (char*,int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
text_data(
    void *ud,
    const xmlChar *xtext,
    int len)
{
    char *text = (char*)xtext;
    parse_data_t *pd = (parse_data_t*)ud;

    int pos = 0;
    if (pd->value != ((void*)0))
    {
        pos = strlen(pd->value);
    }
    char *tmp = realloc(pd->value, pos + len + 1);
    if (tmp == ((void*)0))
        return;
    pd->value = tmp;
    strncpy(pd->value + pos, text, len);
    pd->value[pos + len] = 0;
}
