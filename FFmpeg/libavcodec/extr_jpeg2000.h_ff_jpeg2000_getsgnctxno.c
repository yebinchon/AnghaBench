
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** ff_jpeg2000_sgnctxno_lut ;
 int** ff_jpeg2000_xorbit_lut ;

__attribute__((used)) static inline int ff_jpeg2000_getsgnctxno(int flag, int *xorbit)
{
    *xorbit = ff_jpeg2000_xorbit_lut[flag & 15][(flag >> 8) & 15];
    return ff_jpeg2000_sgnctxno_lut[flag & 15][(flag >> 8) & 15];
}
