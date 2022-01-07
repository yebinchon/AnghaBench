
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

char *strtok(char *strToken, const char *strDelimit)
{
    static char *start;
    static char *end;

    if (strToken != ((void*)0))
        start = strToken;
    else {
        if (*end == 0)
            return 0;

        start = end;
    }

    if (*start == 0)
        return 0;


    while (strchr(strDelimit, *start)) {



        start++;

        if (*start == 0)
            return 0;
    }

    if (*start == 0)
        return 0;

    end = start;

    while (*end != 0) {
        if (strchr(strDelimit, *end)) {




            *end = 0;
            end++;
            return start;
        }
        end++;
    }



    return start;
}
