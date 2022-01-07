
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_level; int sopt_name; int sopt_valsize; int sopt_p; int sopt_val; int sopt_dir; } ;
typedef int * socket_t ;
typedef int errno_t ;


 int CAST_USER_ADDR_T (void*) ;
 int EINVAL ;
 int SOPT_GET ;
 int kernproc ;
 int sogetoptlock (int *,struct sockopt*,int) ;

errno_t
sock_getsockopt(socket_t sock, int level, int optname, void *optval,
    int *optlen)
{
 int error = 0;
 struct sockopt sopt;

 if (sock == ((void*)0) || optval == ((void*)0) || optlen == ((void*)0))
  return (EINVAL);

 sopt.sopt_dir = SOPT_GET;
 sopt.sopt_level = level;
 sopt.sopt_name = optname;
 sopt.sopt_val = CAST_USER_ADDR_T(optval);
 sopt.sopt_valsize = *optlen;
 sopt.sopt_p = kernproc;
 error = sogetoptlock(sock, &sopt, 1);
 if (error == 0)
  *optlen = sopt.sopt_valsize;
 return (error);
}
