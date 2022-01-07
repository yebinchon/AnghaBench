
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** ff_jpeg2000_sigctxno_lut ;

__attribute__((used)) static inline int ff_jpeg2000_getsigctxno(int flag, int bandno)
{
    return ff_jpeg2000_sigctxno_lut[flag & 255][bandno];
}
