
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_name; int sopt_valsize; int sopt_val; } ;
struct socket {int dummy; } ;
struct ndrv_cb {int dummy; } ;


 int EINVAL ;
 int ENOTSUP ;
 int LOG_WARNING ;




 int log (int ,char*,int,int) ;
 int ndrv_delspec (struct ndrv_cb*) ;
 int ndrv_do_add_multicast (struct ndrv_cb*,struct sockopt*) ;
 int ndrv_do_remove_multicast (struct ndrv_cb*,struct sockopt*) ;
 int ndrv_setspec (struct ndrv_cb*,struct sockopt*) ;
 struct ndrv_cb* sotondrvcb (struct socket*) ;

__attribute__((used)) static int
ndrv_ctloutput(struct socket *so, struct sockopt *sopt)
{
    struct ndrv_cb *np = sotondrvcb(so);
 int error = 0;

    switch(sopt->sopt_name)
    {
        case 130:

            if (sopt->sopt_val != 0 || sopt->sopt_valsize != 0) {




                return EINVAL;
            }
            error = ndrv_delspec(np);
            break;
        case 128:
            error = ndrv_setspec(np, sopt);
            break;
        case 131:
            error = ndrv_do_add_multicast(np, sopt);
            break;
        case 129:
            error = ndrv_do_remove_multicast(np, sopt);
            break;
        default:
            error = ENOTSUP;
    }




 return(error);
}
