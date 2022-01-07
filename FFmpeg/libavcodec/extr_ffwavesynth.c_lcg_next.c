
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LCG_A ;
 int LCG_C ;

__attribute__((used)) static uint32_t lcg_next(uint32_t *s)
{
    *s = *s * LCG_A + LCG_C;
    return *s;
}
