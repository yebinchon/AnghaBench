
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct ndrv_cb {int dummy; } ;


 int EINVAL ;
 int ndrv_do_disconnect (struct ndrv_cb*) ;
 struct ndrv_cb* sotondrvcb (struct socket*) ;

__attribute__((used)) static int
ndrv_abort(struct socket *so)
{
 struct ndrv_cb *np = sotondrvcb(so);

 if (np == 0)
  return EINVAL;

 ndrv_do_disconnect(np);
 return 0;
}
