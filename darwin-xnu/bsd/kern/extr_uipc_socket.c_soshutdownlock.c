
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; } ;


 int EJUSTRETURN ;
 int SOF_CONTENT_FILTER ;
 int cfil_sock_shutdown (struct socket*,int*) ;
 int soshutdownlock_final (struct socket*,int) ;

int
soshutdownlock(struct socket *so, int how)
{
 int error = 0;
 error = soshutdownlock_final(so, how);

done:
 return (error);
}
