
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ calloc (int,int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ realloc (char**,int) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;

char **split(char *str, char *delim, int *size)
{
 char **result;
 char *token, *src;
 int cnt;

 cnt = 0;
 src = str;
 result = ((void*)0);

 while ((token = strstr(src, delim)) != ((void*)0)) {
  result = (char **)realloc(result, sizeof(char *) * (cnt + 1));
  result[cnt] = (char *)calloc(1, sizeof(char) * (int)(token - src + 10));
  memcpy(result[cnt], src, token - src);
  result[cnt][token - src] = '\0';
  src = token + strlen(delim);
  cnt ++;
 }

 if (strlen(src) > 0) {
  result = (char **)realloc(result, sizeof(char *) * (cnt + 1));
  result[cnt] = strdup(src);
  cnt ++;
 }

 *size = cnt;
 return result;
}
