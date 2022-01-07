
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* rindex (char const*,char) ;

const char *
tail(const char *fn)
{
 const char *cp;

 cp = rindex(fn, '/');
 if (cp == 0)
  return (fn);
 return (cp+1);
}
