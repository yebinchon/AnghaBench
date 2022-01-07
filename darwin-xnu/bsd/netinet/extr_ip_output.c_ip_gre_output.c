
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int ro ;


 int ROUTE_RELEASE (struct route*) ;
 int bzero (struct route*,int) ;
 int ip_output (struct mbuf*,int *,struct route*,int ,int *,int *) ;

int
ip_gre_output(struct mbuf *m)
{
 struct route ro;
 int error;

 bzero(&ro, sizeof (ro));

 error = ip_output(m, ((void*)0), &ro, 0, ((void*)0), ((void*)0));

 ROUTE_RELEASE(&ro);

 return (error);
}
