
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int range; int low; int overread; scalar_t__* bytestream; scalar_t__* bytestream_end; } ;
typedef TYPE_1__ RangeCoder ;



__attribute__((used)) static inline void refill(RangeCoder *c)
{
    if (c->range < 0x100) {
        c->range <<= 8;
        c->low <<= 8;
        if (c->bytestream < c->bytestream_end) {
            c->low += c->bytestream[0];
            c->bytestream++;
        } else
            c->overread ++;
    }
}
