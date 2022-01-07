
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* walk_band_t ) (TYPE_1__*,int,int,int,int,int,int,int *) ;
typedef int int32_t ;
struct TYPE_5__ {int* band_spectrum; } ;
typedef TYPE_1__ DCAEncContext ;



__attribute__((used)) static void walk_band_high(DCAEncContext *c, int band, int channel,
                           walk_band_t walk, int32_t *arg)
{
    int f;

    if (band == 31) {
        for (f = 0; f < 4; f++)
            walk(c, 31, 31, 256 - 4 + f, 0, -2047, channel, arg);
    } else {
        for (f = 0; f < 8; f++)
            walk(c, band, band + 1, 8 * band + 4 + f,
                    c->band_spectrum[f], c->band_spectrum[7 - f], channel, arg);
    }
}
