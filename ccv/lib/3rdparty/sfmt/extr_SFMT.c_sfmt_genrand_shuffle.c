
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfmt_t ;


 scalar_t__ alloca (int) ;
 int memcpy (char*,char*,int) ;
 int sfmt_genrand_uint32 (int *) ;

void sfmt_genrand_shuffle(sfmt_t * sfmt, void *array, int size, int rsize) {
 int i, j;
 char *t = (char *)alloca(rsize);
 char *ptr = (char *)array;
 char *ptri = ptr + (size - 1) * rsize;
 for (i = size - 1; i >= 0; i--) {
  j = sfmt_genrand_uint32(sfmt) % (i + 1);
  if (i != j)
  {
   char *ptrj = ptr + j * rsize;
   memcpy(t, ptri, rsize);
   memcpy(ptri, ptrj, rsize);
   memcpy(ptrj, t, rsize);
  }
  ptri -= rsize;
 }
}
