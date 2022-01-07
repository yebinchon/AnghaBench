
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LPC_ORDER ;
 int ff_t_sqrt (unsigned int) ;

unsigned int ff_rms(const int *data)
{
    int i;
    unsigned int res = 0x10000;
    int b = LPC_ORDER;

    for (i = 0; i < LPC_ORDER; i++) {
        res = (((0x1000000 - data[i]*data[i]) >> 12) * res) >> 12;

        if (res == 0)
            return 0;

        while (res <= 0x3fff) {
            b++;
            res <<= 2;
        }
    }

    return ff_t_sqrt(res) >> b;
}
