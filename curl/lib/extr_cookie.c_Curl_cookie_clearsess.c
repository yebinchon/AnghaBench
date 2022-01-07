
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CookieInfo {struct Cookie** cookies; int numcookies; } ;
struct Cookie {struct Cookie* next; int expires; } ;


 unsigned int COOKIE_HASH_SIZE ;
 int freecookie (struct Cookie*) ;

void Curl_cookie_clearsess(struct CookieInfo *cookies)
{
  struct Cookie *first, *curr, *next, *prev = ((void*)0);
  unsigned int i;

  if(!cookies)
    return;

  for(i = 0; i < COOKIE_HASH_SIZE; i++) {
    if(!cookies->cookies[i])
      continue;

    first = curr = prev = cookies->cookies[i];

    for(; curr; curr = next) {
      next = curr->next;
      if(!curr->expires) {
        if(first == curr)
          first = next;

        if(prev == curr)
          prev = next;
        else
          prev->next = next;

        freecookie(curr);
        cookies->numcookies--;
      }
      else
        prev = curr;
    }

    cookies->cookies[i] = first;
  }
}
