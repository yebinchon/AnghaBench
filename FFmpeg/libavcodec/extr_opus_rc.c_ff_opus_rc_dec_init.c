
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int range; int total_bits; int gb; scalar_t__ value; } ;
typedef TYPE_1__ OpusRangeCoder ;


 scalar_t__ get_bits (int *,int) ;
 int init_get_bits8 (int *,int const*,int) ;
 int opus_rc_dec_normalize (TYPE_1__*) ;

int ff_opus_rc_dec_init(OpusRangeCoder *rc, const uint8_t *data, int size)
{
    int ret = init_get_bits8(&rc->gb, data, size);
    if (ret < 0)
        return ret;

    rc->range = 128;
    rc->value = 127 - get_bits(&rc->gb, 7);
    rc->total_bits = 9;
    opus_rc_dec_normalize(rc);

    return 0;
}
