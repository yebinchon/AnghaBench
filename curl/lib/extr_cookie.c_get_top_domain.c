
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memrchr (char const* const,char,int) ;
 size_t strlen (char const* const) ;

__attribute__((used)) static const char *get_top_domain(const char * const domain, size_t *outlen)
{
  size_t len;
  const char *first = ((void*)0), *last;

  if(!domain)
    return ((void*)0);

  len = strlen(domain);
  last = memrchr(domain, '.', len);
  if(last) {
    first = memrchr(domain, '.', (last - domain));
    if(first)
      len -= (++first - domain);
  }

  if(outlen)
    *outlen = len;

  return first? first: domain;
}
