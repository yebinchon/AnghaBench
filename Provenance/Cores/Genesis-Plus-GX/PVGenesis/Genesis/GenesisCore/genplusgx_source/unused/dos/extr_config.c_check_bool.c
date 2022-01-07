
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ stricmp (char*,char*) ;

int check_bool(char *token)
{
    int result = 1;
    if(stricmp("off", token) == 0)
        result = 0;
    if(stricmp("no", token) == 0)
        result = 0;
    return (result);
}
