
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char * strcpy(char *to, const char *from)
{
 char *save = to;

 for (; (*to = *from) != '\0'; ++from, ++to);
 return(save);
}
