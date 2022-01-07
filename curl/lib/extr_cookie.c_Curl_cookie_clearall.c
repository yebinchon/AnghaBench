
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CookieInfo {scalar_t__ numcookies; int ** cookies; } ;


 unsigned int COOKIE_HASH_SIZE ;
 int Curl_cookie_freelist (int *) ;

void Curl_cookie_clearall(struct CookieInfo *cookies)
{
  if(cookies) {
    unsigned int i;
    for(i = 0; i < COOKIE_HASH_SIZE; i++) {
      Curl_cookie_freelist(cookies->cookies[i]);
      cookies->cookies[i] = ((void*)0);
    }
    cookies->numcookies = 0;
  }
}
