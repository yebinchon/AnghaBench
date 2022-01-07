
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_STATUS ;
 int elprintf (int ,char*,char const*) ;

__attribute__((used)) static int get_token(const char *buff, char *dest, int len)
{
 const char *p = buff;
 char sep = ' ';
 int d = 0, skip = 0;

 while (*p && *p == ' ') {
  skip++;
  p++;
 }

 if (*p == '\"') {
  sep = '\"';
  p++;
 }
 while (*p && *p != sep && d < len-1)
  dest[d++] = *p++;
 dest[d] = 0;

 if (sep == '\"' && *p != sep)
  elprintf(EL_STATUS, "cue: bad token: \"%s\"", buff);

 return d + skip;
}
