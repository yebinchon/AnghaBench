
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct in6_addrpolicy {int use; } ;


 int ADDRSEL_LOCK () ;
 int ADDRSEL_UNLOCK () ;
 struct in6_addrpolicy defaultaddrpolicy ;
 struct in6_addrpolicy* match_addrsel_policy (struct sockaddr_in6*) ;

struct in6_addrpolicy *
in6_addrsel_lookup_policy(struct sockaddr_in6 *key)
{
 struct in6_addrpolicy *match = ((void*)0);

 ADDRSEL_LOCK();
 match = match_addrsel_policy(key);

 if (match == ((void*)0))
  match = &defaultaddrpolicy;
 else
  match->use++;
 ADDRSEL_UNLOCK();

 return (match);
}
