
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;

__attribute__((used)) static char *escape_string(const char *src)
{
  size_t bytecount = 0;
  size_t i;
  char *dst;

  for(i = 0; src[i]; i++)
    if(src[i] == '"' || src[i] == '\\')
      bytecount++;

  bytecount += i;
  dst = malloc(bytecount + 1);
  if(!dst)
    return ((void*)0);

  for(i = 0; *src; src++) {
    if(*src == '"' || *src == '\\')
      dst[i++] = '\\';
    dst[i++] = *src;
  }

  dst[i] = '\0';
  return dst;
}
