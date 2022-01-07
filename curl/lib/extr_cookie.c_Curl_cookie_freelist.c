
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Cookie {struct Cookie* next; } ;


 int freecookie (struct Cookie*) ;

void Curl_cookie_freelist(struct Cookie *co)
{
  struct Cookie *next;
  while(co) {
    next = co->next;
    freecookie(co);
    co = next;
  }
}
