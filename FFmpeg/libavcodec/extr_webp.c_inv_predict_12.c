
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ av_clip_uint8 (scalar_t__ const) ;

__attribute__((used)) static void inv_predict_12(uint8_t *p, const uint8_t *p_l, const uint8_t *p_tl,
                           const uint8_t *p_t, const uint8_t *p_tr)
{
    p[0] = av_clip_uint8(p_l[0] + p_t[0] - p_tl[0]);
    p[1] = av_clip_uint8(p_l[1] + p_t[1] - p_tl[1]);
    p[2] = av_clip_uint8(p_l[2] + p_t[2] - p_tl[2]);
    p[3] = av_clip_uint8(p_l[3] + p_t[3] - p_tl[3]);
}
