
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float brightness; int * lut_l16; int * lut_l; } ;
typedef TYPE_1__ HueContext ;


 int av_clip_uint8 (int) ;
 int av_clip_uintp2 (int,int) ;

__attribute__((used)) static inline void create_luma_lut(HueContext *h)
{
    const float b = h->brightness;
    int i;

    for (i = 0; i < 256; i++) {
        h->lut_l[i] = av_clip_uint8(i + b * 25.5);
    }
    for (i = 0; i < 65536; i++) {
        h->lut_l16[i] = av_clip_uintp2(i + b * 102.4, 10);
    }
}
