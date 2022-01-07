
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {size_t sopt_valsize; scalar_t__ sopt_val; scalar_t__ sopt_p; } ;


 int CAST_DOWN (int ,scalar_t__) ;
 scalar_t__ USER_ADDR_NULL ;
 int bcopy (void*,int ,size_t) ;
 int caddr_t ;
 int copyout (void*,scalar_t__,size_t) ;
 scalar_t__ kernproc ;
 size_t min (size_t,size_t) ;

int
sooptcopyout(struct sockopt *sopt, void *buf, size_t len)
{
 int error;
 size_t valsize;

 error = 0;
 valsize = min(len, sopt->sopt_valsize);
 sopt->sopt_valsize = valsize;
 if (sopt->sopt_val != USER_ADDR_NULL) {
  if (sopt->sopt_p != kernproc)
   error = copyout(buf, sopt->sopt_val, valsize);
  else
   bcopy(buf, CAST_DOWN(caddr_t, sopt->sopt_val), valsize);
 }
 return (error);
}
