
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef struct in_addr in6_addr ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ Curl_inet_pton (int ,char const*,struct in_addr*) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool isip(const char *domain)
{
  struct in_addr addr;




  if(Curl_inet_pton(AF_INET, domain, &addr)



    ) {

    return TRUE;
  }

  return FALSE;
}
