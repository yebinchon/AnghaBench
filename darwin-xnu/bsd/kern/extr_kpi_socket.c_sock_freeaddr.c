
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int FREE (struct sockaddr*,int ) ;
 int M_SONAME ;

void
sock_freeaddr(struct sockaddr *sa)
{
 if (sa != ((void*)0))
  FREE(sa, M_SONAME);
}
