
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CookieInfo {int numcookies; struct Cookie** cookies; } ;
struct Cookie {scalar_t__ expires; struct Cookie* next; } ;
typedef scalar_t__ curl_off_t ;


 unsigned int COOKIE_HASH_SIZE ;
 int freecookie (struct Cookie*) ;
 int time (int *) ;

__attribute__((used)) static void remove_expired(struct CookieInfo *cookies)
{
  struct Cookie *co, *nx;
  curl_off_t now = (curl_off_t)time(((void*)0));
  unsigned int i;

  for(i = 0; i < COOKIE_HASH_SIZE; i++) {
    struct Cookie *pv = ((void*)0);
    co = cookies->cookies[i];
    while(co) {
      nx = co->next;
      if(co->expires && co->expires < now) {
        if(!pv) {
          cookies->cookies[i] = co->next;
        }
        else {
          pv->next = co->next;
        }
        cookies->numcookies--;
        freecookie(co);
      }
      else {
        pv = co;
      }
      co = nx;
    }
  }
}
