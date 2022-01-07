
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ cacheval; scalar_t__ cachelen; int bytes; int const* position; } ;
struct TYPE_5__ {TYPE_1__ rb; } ;
typedef TYPE_2__ OpusRangeCoder ;



void ff_opus_rc_dec_raw_init(OpusRangeCoder *rc, const uint8_t *rightend, uint32_t bytes)
{
    rc->rb.position = rightend;
    rc->rb.bytes = bytes;
    rc->rb.cachelen = 0;
    rc->rb.cacheval = 0;
}
