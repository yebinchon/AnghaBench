
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static void filter16_simple_low(int32_t *work_line,
                                uint8_t *in_lines_cur8[2],
                                const int16_t *coef, int linesize)
{
    uint16_t *in_lines_cur[2] = { (uint16_t *)in_lines_cur8[0], (uint16_t *)in_lines_cur8[1] };
    int i;

    linesize /= 2;
    for (i = 0; i < linesize; i++) {
        *work_line = *in_lines_cur[0]++ * coef[0];
        *work_line++ += *in_lines_cur[1]++ * coef[1];
    }
}
