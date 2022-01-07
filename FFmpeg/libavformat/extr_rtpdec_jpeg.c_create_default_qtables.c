
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int av_clip (int,int,int) ;
 int* default_quantizers ;

__attribute__((used)) static void create_default_qtables(uint8_t *qtables, uint8_t q)
{
    int factor = q;
    int i;
    uint16_t S;

    factor = av_clip(q, 1, 99);

    if (q < 50)
        S = 5000 / factor;
    else
        S = 200 - factor * 2;

    for (i = 0; i < 128; i++) {
        int val = (default_quantizers[i] * S + 50) / 100;


        val = av_clip(val, 1, 255);
        qtables[i] = val;
    }
}
