
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

char * markup_escape_text(const char *str)
{
    int ii, jj;
    int len = strlen(str);
    int step = 40;
    int alloc = len + step;
    char *markup = malloc(alloc);

    for (ii = 0, jj = 0; ii < len; ii++)
    {
        if (jj > alloc - 8)
        {
            alloc += step;
            char *tmp = realloc(markup, alloc);
            if (tmp == ((void*)0))
            {
                markup[jj] = 0;
                return markup;
            }
            markup = tmp;
        }
        switch (str[ii])
        {
            case '<':
                markup[jj++] = '&';
                markup[jj++] = 'l';
                markup[jj++] = 't';
                markup[jj++] = ';';
                break;
            case '>':
                markup[jj++] = '&';
                markup[jj++] = 'g';
                markup[jj++] = 't';
                markup[jj++] = ';';
                break;
            case '\'':
                markup[jj++] = '&';
                markup[jj++] = 'a';
                markup[jj++] = 'p';
                markup[jj++] = 'o';
                markup[jj++] = 's';
                markup[jj++] = ';';
                break;
            case '"':
                markup[jj++] = '&';
                markup[jj++] = 'q';
                markup[jj++] = 'u';
                markup[jj++] = 'o';
                markup[jj++] = 't';
                markup[jj++] = ';';
                break;
            case '&':
                markup[jj++] = '&';
                markup[jj++] = 'a';
                markup[jj++] = 'm';
                markup[jj++] = 'p';
                markup[jj++] = ';';
                break;
            default:
                markup[jj++] = str[ii];
                break;
        }
        markup[jj] = 0;
    }
    return markup;
}
