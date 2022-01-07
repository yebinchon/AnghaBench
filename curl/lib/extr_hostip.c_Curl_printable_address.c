
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct TYPE_3__ {int ai_family; scalar_t__ ai_addr; } ;
typedef TYPE_1__ Curl_addrinfo ;




 char const* Curl_inet_ntop (int,void const*,char*,size_t) ;

const char *
Curl_printable_address(const Curl_addrinfo *ai, char *buf, size_t bufsize)
{
  const struct sockaddr_in *sa4;
  const struct in_addr *ipaddr4;





  switch(ai->ai_family) {
    case 129:
      sa4 = (const void *)ai->ai_addr;
      ipaddr4 = &sa4->sin_addr;
      return Curl_inet_ntop(ai->ai_family, (const void *)ipaddr4, buf,
                            bufsize);







    default:
      break;
  }
  return ((void*)0);
}
