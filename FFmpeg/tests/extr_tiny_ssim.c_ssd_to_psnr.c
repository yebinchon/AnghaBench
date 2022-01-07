
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int log (int) ;

__attribute__((used)) static double ssd_to_psnr( uint64_t ssd, uint64_t denom )
{
    return -10*log((double)ssd/(denom*255*255))/log(10);
}
