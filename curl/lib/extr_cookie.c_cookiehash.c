
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t cookie_hash_domain (char const*,size_t) ;
 char* get_top_domain (char const* const,size_t*) ;
 scalar_t__ isip (char const* const) ;

__attribute__((used)) static size_t cookiehash(const char * const domain)
{
  const char *top;
  size_t len;

  if(!domain || isip(domain))
    return 0;

  top = get_top_domain(domain, &len);
  return cookie_hash_domain(top, len);
}
