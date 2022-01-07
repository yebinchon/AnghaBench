
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtod (char*,int *) ;
 char* strtok (int *,char*) ;

__attribute__((used)) static double parse_hhmmss_strtok()
{






    double duration = 0;
    char* str;
    while ((str = strtok(((void*)0), ":")) != ((void*)0))
        duration = 60*duration + strtod(str, ((void*)0));
    return duration;
}
