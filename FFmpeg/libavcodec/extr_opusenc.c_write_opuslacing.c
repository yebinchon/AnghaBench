
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ FFALIGN (int,int) ;
 int FFMIN (scalar_t__,int) ;

__attribute__((used)) static inline int write_opuslacing(uint8_t *dst, int v)
{
    dst[0] = FFMIN(v - FFALIGN(v - 255, 4), v);
    dst[1] = v - dst[0] >> 2;
    return 1 + (v >= 252);
}
