
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int vlc_n; } ;
typedef TYPE_1__ HYuvContext ;


 int av_assert0 (int) ;

__attribute__((used)) static int store_table(HYuvContext *s, const uint8_t *len, uint8_t *buf)
{
    int i;
    int index = 0;
    int n = s->vlc_n;

    for (i = 0; i < n;) {
        int val = len[i];
        int repeat = 0;

        for (; i < n && len[i] == val && repeat < 255; i++)
            repeat++;

        av_assert0(val < 32 && val >0 && repeat < 256 && repeat>0);
        if (repeat > 7) {
            buf[index++] = val;
            buf[index++] = repeat;
        } else {
            buf[index++] = val | (repeat << 5);
        }
    }

    return index;
}
