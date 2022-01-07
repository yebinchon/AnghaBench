
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void inv_predict_7(uint8_t *p, const uint8_t *p_l, const uint8_t *p_tl,
                          const uint8_t *p_t, const uint8_t *p_tr)
{
    p[0] = p_l[0] + p_t[0] >> 1;
    p[1] = p_l[1] + p_t[1] >> 1;
    p[2] = p_l[2] + p_t[2] >> 1;
    p[3] = p_l[3] + p_t[3] >> 1;
}
