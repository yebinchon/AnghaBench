
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stub1 (char*) ;

int
searchp(const char *spath, char *file, char *fullname, int (*func)(char *))
{
 const char *nextpath, *nextchar, *lastchar;
 char *fname;
 int failure;

 nextpath = ((*file == '/') ? "" : spath);
 do {
  fname = fullname;
  nextchar = nextpath;
  while (*nextchar && (*nextchar != ':'))
   *fname++ = *nextchar++;
  if (nextchar != nextpath && *file) *fname++ = '/';
  lastchar = nextchar;
  nextpath = ((*nextchar) ? nextchar + 1 : nextchar);
  nextchar = file;
  while (*nextchar) *fname++ = *nextchar++;
  *fname = '\0';
  failure = (*func) (fullname);
 }
 while (failure && (*lastchar));
 return (failure ? -1 : 0);
}
