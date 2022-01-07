
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** refctxno_lut ;

__attribute__((used)) static inline int ff_jpeg2000_getrefctxno(int flag)
{
    return refctxno_lut[(flag >> 14) & 1][(flag & 255) != 0];
}
