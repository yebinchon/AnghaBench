
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int daub4 (float*,unsigned long,int) ;

void wt1(float a[], unsigned long n, int isign)
{
 unsigned long nn;
 int inverseStartLength = n/4;
 if (n < inverseStartLength) return;
 if (isign >= 0) {
  for (nn=n;nn>=inverseStartLength;nn>>=1) daub4(a,nn,isign);
 } else {
  for (nn=inverseStartLength;nn<=n;nn<<=1) daub4(a,nn,isign);
 }
}
