
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {void*** lut_v10; void*** lut_u10; void*** lut_v; void*** lut_u; } ;
typedef TYPE_1__ HueContext ;


 void* av_clip_uint8 (int) ;
 void* av_clip_uintp2 (int,int) ;

__attribute__((used)) static inline void create_chrominance_lut(HueContext *h, const int32_t c,
                                          const int32_t s)
{
    int32_t i, j, u, v, new_u, new_v;





    for (i = 0; i < 256; i++) {
        for (j = 0; j < 256; j++) {

            u = i - 128;
            v = j - 128;







            new_u = ((c * u) - (s * v) + (1 << 15) + (128 << 16)) >> 16;
            new_v = ((s * u) + (c * v) + (1 << 15) + (128 << 16)) >> 16;


            h->lut_u[i][j] = av_clip_uint8(new_u);
            h->lut_v[i][j] = av_clip_uint8(new_v);
        }
    }
    for (i = 0; i < 1024; i++) {
        for (j = 0; j < 1024; j++) {
            u = i - 512;
            v = j - 512;







            new_u = ((c * u) - (s * v) + (1 << 15) + (512 << 16)) >> 16;
            new_v = ((s * u) + (c * v) + (1 << 15) + (512 << 16)) >> 16;


            h->lut_u10[i][j] = av_clip_uintp2(new_u, 10);
            h->lut_v10[i][j] = av_clip_uintp2(new_v, 10);
        }
    }
}
