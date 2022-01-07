
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {size_t sopt_valsize; scalar_t__ sopt_p; int sopt_val; } ;


 int CAST_DOWN (int ,int ) ;
 int EINVAL ;
 int bcopy (int ,void*,size_t) ;
 int caddr_t ;
 int copyin (int ,void*,size_t) ;
 scalar_t__ kernproc ;

int
sooptcopyin(struct sockopt *sopt, void *buf, size_t len, size_t minlen)
{
 size_t valsize;







 if ((valsize = sopt->sopt_valsize) < minlen)
  return (EINVAL);
 if (valsize > len)
  sopt->sopt_valsize = valsize = len;

 if (sopt->sopt_p != kernproc)
  return (copyin(sopt->sopt_val, buf, valsize));

 bcopy(CAST_DOWN(caddr_t, sopt->sopt_val), buf, valsize);
 return (0);
}
