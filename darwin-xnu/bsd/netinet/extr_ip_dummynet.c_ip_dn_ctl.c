
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {scalar_t__ sopt_dir; int sopt_name; int sopt_p; } ;
struct dn_pipe {int dummy; } ;


 int EINVAL ;
 int EPERM ;




 scalar_t__ SOPT_SET ;
 int config_pipe (struct dn_pipe*) ;
 int cp_pipe_from_user_32 (struct sockopt*,struct dn_pipe*) ;
 int cp_pipe_from_user_64 (struct sockopt*,struct dn_pipe*) ;
 int delete_pipe (struct dn_pipe*) ;
 int dummynet_flush () ;
 int dummynet_get (struct sockopt*) ;
 int printf (char*,int) ;
 int proc_is64bit (int ) ;
 int securelevel ;

__attribute__((used)) static int
ip_dn_ctl(struct sockopt *sopt)
{
    int error = 0 ;
    struct dn_pipe *p, tmp_pipe;


    if (sopt->sopt_dir == SOPT_SET && securelevel >= 3)
 return (EPERM);

    switch (sopt->sopt_name) {
    default :
 printf("dummynet: -- unknown option %d", sopt->sopt_name);
 return EINVAL ;

    case 128 :
 error = dummynet_get(sopt);
 break ;

    case 129 :
 dummynet_flush() ;
 break ;

    case 131 :
 p = &tmp_pipe ;
 if (proc_is64bit(sopt->sopt_p))
  error = cp_pipe_from_user_64( sopt, p );
 else
  error = cp_pipe_from_user_32( sopt, p );

 if (error)
     break ;
 error = config_pipe(p);
 break ;

    case 130 :
 p = &tmp_pipe ;
 if (proc_is64bit(sopt->sopt_p))
  error = cp_pipe_from_user_64( sopt, p );
 else
  error = cp_pipe_from_user_32( sopt, p );
 if (error)
     break ;

 error = delete_pipe(p);
 break ;
    }
    return error ;
}
