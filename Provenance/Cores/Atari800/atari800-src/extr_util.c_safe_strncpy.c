
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,int) ;

char *safe_strncpy(char *buffer, const char *source, int bufsize)
{
 if (buffer == ((void*)0)) return ((void*)0);
 if (bufsize > 0) {
  strncpy(buffer, source != ((void*)0) ? source : "", bufsize);
  buffer[bufsize-1] = '\0';
 }
 return buffer;
}
