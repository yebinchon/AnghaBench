
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_strings; char** strings; } ;
typedef TYPE_1__ STRING_VEC_T ;


 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

int string_vec_find(STRING_VEC_T *vec, const char *str, int len)
{
    int i;

    for (i = 0; i < vec->num_strings; i++)
    {
 if (len)
 {
     if ((strncmp(vec->strings[i], str, len) == 0) &&
  (vec->strings[i][len] == '\0'))
  return i;
 }
 else if (strcmp(vec->strings[i], str) == 0)
     return i;
    }

    return -1;
}
