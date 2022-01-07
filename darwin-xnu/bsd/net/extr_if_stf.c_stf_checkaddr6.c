
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stf_softc {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int GET_V4 (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_6TO4 (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_V4COMPAT (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int stf_checkaddr4 (struct stf_softc*,int ,struct ifnet*) ;

__attribute__((used)) static int
stf_checkaddr6(
 struct stf_softc *sc,
 struct in6_addr *in6,
 struct ifnet *inifp)
{



 if (IN6_IS_ADDR_6TO4(in6))
  return stf_checkaddr4(sc, GET_V4(in6), inifp);







 if (IN6_IS_ADDR_V4COMPAT(in6) || IN6_IS_ADDR_V4MAPPED(in6))
  return -1;

 return 0;
}
