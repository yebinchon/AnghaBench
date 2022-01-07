
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_2__ {int sin6_addr; } ;


 int AF_INET ;
 int AF_INET6 ;
 unsigned int IFSCOPE_NONE ;
 scalar_t__ IN6_IS_SCOPE_EMBED (int *) ;
 struct sockaddr* SA (struct sockaddr_storage*) ;
 TYPE_1__* SIN6 (struct sockaddr_storage*) ;
 int VERIFY (int) ;
 int bcopy (struct sockaddr*,struct sockaddr_storage*,int) ;
 int bzero (struct sockaddr_storage*,int) ;
 unsigned int sin6_get_embedded_ifscope (struct sockaddr*) ;
 unsigned int sin6_get_ifscope (struct sockaddr*) ;
 int sin6_set_embedded_ifscope (struct sockaddr*,unsigned int) ;
 int sin6_set_ifscope (struct sockaddr*,unsigned int) ;
 unsigned int sin_get_ifscope (struct sockaddr*) ;
 int sin_set_ifscope (struct sockaddr*,unsigned int) ;

struct sockaddr *
sa_copy(struct sockaddr *src, struct sockaddr_storage *dst,
    unsigned int *pifscope)
{
 int af = src->sa_family;
 unsigned int ifscope = (pifscope != ((void*)0)) ? *pifscope : IFSCOPE_NONE;

 VERIFY(af == AF_INET || af == AF_INET6);

 bzero(dst, sizeof (*dst));

 if (af == AF_INET) {
  bcopy(src, dst, sizeof (struct sockaddr_in));
  if (pifscope == ((void*)0) || ifscope != IFSCOPE_NONE)
   sin_set_ifscope(SA(dst), ifscope);
 } else {
  bcopy(src, dst, sizeof (struct sockaddr_in6));
  if (pifscope != ((void*)0) &&
      IN6_IS_SCOPE_EMBED(&SIN6(dst)->sin6_addr)) {
   unsigned int eifscope;






   eifscope = sin6_get_embedded_ifscope(SA(dst));
   if (eifscope != IFSCOPE_NONE && ifscope == IFSCOPE_NONE)
    ifscope = eifscope;
   if (ifscope != IFSCOPE_NONE) {

    sin6_set_ifscope(SA(dst), ifscope);
   } else {

    ifscope = sin6_get_ifscope(SA(dst));
   }




   if (ifscope != IFSCOPE_NONE && eifscope != ifscope)
    sin6_set_embedded_ifscope(SA(dst), ifscope);
  } else if (pifscope == ((void*)0) || ifscope != IFSCOPE_NONE) {
   sin6_set_ifscope(SA(dst), ifscope);
  }
 }

 if (pifscope != ((void*)0)) {
  *pifscope = (af == AF_INET) ? sin_get_ifscope(SA(dst)) :
      sin6_get_ifscope(SA(dst));
 }

 return (SA(dst));
}
