
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E2BIG ;
 int EINVAL ;
 int EOVERFLOW ;
 size_t RSIZE_MAX ;
 int secure_memset (void*,int,size_t) ;

int
memset_s(void *s, size_t smax, int c, size_t n)
{
 int err = 0;

 if (s == ((void*)0)) return EINVAL;
 if (smax > RSIZE_MAX) return E2BIG;
 if (n > smax) {
  n = smax;
  err = EOVERFLOW;
 }





 secure_memset(s, c, n);

 return err;
}
