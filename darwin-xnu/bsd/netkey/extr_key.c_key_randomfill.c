
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;


 int bcopy (int *,int *,size_t) ;
 int cc_rand_generate (void*,size_t) ;
 int printf (char*) ;
 int random () ;
 scalar_t__ read_random (void*,int ) ;

void
key_randomfill(
      void *p,
      size_t l)
{



 size_t n;
 u_int32_t v;
 static int warn = 1;

 n = 0;
 n = (size_t)read_random(p, (u_int)l);

 while (n < l) {
  v = random();
  bcopy(&v, (u_int8_t *)p + n,
     l - n < sizeof(v) ? l - n : sizeof(v));
  n += sizeof(v);

  if (warn) {
   printf("WARNING: pseudo-random number generator "
       "used for IPsec processing\n");
   warn = 0;
  }
 }

}
