
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_dns_entry {scalar_t__ inuse; int addr; } ;


 int Curl_freeaddrinfo (int ) ;
 int DEBUGASSERT (int ) ;
 int free (struct Curl_dns_entry*) ;

__attribute__((used)) static void freednsentry(void *freethis)
{
  struct Curl_dns_entry *dns = (struct Curl_dns_entry *) freethis;
  DEBUGASSERT(dns && (dns->inuse>0));

  dns->inuse--;
  if(dns->inuse == 0) {
    Curl_freeaddrinfo(dns->addr);
    free(dns);
  }
}
