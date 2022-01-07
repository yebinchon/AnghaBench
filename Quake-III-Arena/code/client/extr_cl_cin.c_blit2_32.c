
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



__attribute__((used)) static void blit2_32( byte *src, byte *dst, int spl )
{
 double *dsrc, *ddst;
 int dspl;

 dsrc = (double *)src;
 ddst = (double *)dst;
 dspl = spl>>3;

 ddst[0] = dsrc[0];
 ddst[dspl] = dsrc[1];
}
