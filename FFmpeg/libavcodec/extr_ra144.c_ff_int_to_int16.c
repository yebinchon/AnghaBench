
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int LPC_ORDER ;

void ff_int_to_int16(int16_t *out, const int *inp)
{
    int i;

    for (i = 0; i < LPC_ORDER; i++)
        *out++ = *inp++;
}
