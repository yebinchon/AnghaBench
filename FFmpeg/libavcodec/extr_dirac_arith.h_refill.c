
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int counter; scalar_t__ bytestream; scalar_t__ bytestream_end; int overread; int low; int error; } ;
typedef TYPE_1__ DiracArith ;


 int AVERROR_INVALIDDATA ;
 int bytestream_get_be16 (scalar_t__*) ;

__attribute__((used)) static inline void refill(DiracArith *c)
{
    int counter = c->counter;

    if (counter >= 0) {
        int new = bytestream_get_be16(&c->bytestream);


        if (c->bytestream > c->bytestream_end) {
            new |= 0xff;
            if (c->bytestream > c->bytestream_end+1)
                new |= 0xff00;

            c->bytestream = c->bytestream_end;
            c->overread ++;
            if (c->overread > 4)
                c->error = AVERROR_INVALIDDATA;
        }

        c->low += new << counter;
        counter -= 16;
    }
    c->counter = counter;
}
