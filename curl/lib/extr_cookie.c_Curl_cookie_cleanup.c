
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CookieInfo {int * cookies; struct CookieInfo* filename; } ;


 unsigned int COOKIE_HASH_SIZE ;
 int Curl_cookie_freelist (int ) ;
 int free (struct CookieInfo*) ;

void Curl_cookie_cleanup(struct CookieInfo *c)
{
  if(c) {
    unsigned int i;
    free(c->filename);
    for(i = 0; i < COOKIE_HASH_SIZE; i++)
      Curl_cookie_freelist(c->cookies[i]);
    free(c);
  }
}
