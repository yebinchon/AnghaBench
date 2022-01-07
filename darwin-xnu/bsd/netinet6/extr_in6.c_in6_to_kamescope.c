
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct ifnet {int dummy; } ;


 int EINVAL ;
 int VERIFY (int ) ;
 int in6_addr2scopeid (struct ifnet*,int *) ;
 int in6_embedscope (int *,struct sockaddr_in6*,int *,int *,int *) ;
 int in6_recoverscope (struct sockaddr_in6*,int *,struct ifnet*) ;

__attribute__((used)) static int
in6_to_kamescope(struct sockaddr_in6 *sin6, struct ifnet *ifp)
{
 struct sockaddr_in6 tmp;
 int error, id;

 VERIFY(sin6 != ((void*)0));
 tmp = *sin6;

 error = in6_recoverscope(&tmp, &sin6->sin6_addr, ifp);
 if (error != 0)
  return (error);

 id = in6_addr2scopeid(ifp, &tmp.sin6_addr);
 if (tmp.sin6_scope_id == 0)
  tmp.sin6_scope_id = id;
 else if (tmp.sin6_scope_id != id)
  return (EINVAL);

 error = in6_embedscope(&tmp.sin6_addr, &tmp, ((void*)0), ((void*)0), ((void*)0));
 if (error != 0)
  return (error);

 tmp.sin6_scope_id = 0;
 *sin6 = tmp;
 return (0);
}
