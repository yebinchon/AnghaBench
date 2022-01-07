
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int movs ;
typedef int byte ;



__attribute__((used)) static void blit4_32( byte *src, byte *dst, int spl )
{
 movs *dsrc, *ddst;
 int dspl;

 dsrc = (movs *)src;
 ddst = (movs *)dst;
 dspl = spl>>3;

 ddst[0] = dsrc[0]; ddst[1] = dsrc[1];
 dsrc += 2; ddst += dspl;
 ddst[0] = dsrc[0]; ddst[1] = dsrc[1];
 dsrc += 2; ddst += dspl;
 ddst[0] = dsrc[0]; ddst[1] = dsrc[1];
 dsrc += 2; ddst += dspl;
 ddst[0] = dsrc[0]; ddst[1] = dsrc[1];
}
