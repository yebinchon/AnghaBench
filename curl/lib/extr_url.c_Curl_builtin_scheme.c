
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_handler {int scheme; } ;


 struct Curl_handler** protocols ;
 scalar_t__ strcasecompare (int ,char const*) ;

const struct Curl_handler *Curl_builtin_scheme(const char *scheme)
{
  const struct Curl_handler * const *pp;
  const struct Curl_handler *p;


  for(pp = protocols; (p = *pp) != ((void*)0); pp++)
    if(strcasecompare(p->scheme, scheme))

      return p;
  return ((void*)0);
}
