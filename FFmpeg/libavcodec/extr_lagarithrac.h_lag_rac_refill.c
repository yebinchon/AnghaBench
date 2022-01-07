
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int range; int low; scalar_t__ bytestream; scalar_t__ bytestream_end; int overread; } ;
typedef TYPE_1__ lag_rac ;


 int AV_RB16 (scalar_t__) ;

__attribute__((used)) static inline void lag_rac_refill(lag_rac *l)
{
    while (l->range <= 0x800000) {
        l->low <<= 8;
        l->range <<= 8;
        l->low |= 0xff & (AV_RB16(l->bytestream) >> 1);
        if (l->bytestream < l->bytestream_end)
            l->bytestream++;
        else
            l->overread++;
    }
}
