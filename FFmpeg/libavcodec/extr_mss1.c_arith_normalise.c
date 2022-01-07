
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gb; } ;
struct TYPE_5__ {int high; int low; int value; TYPE_1__ gbc; int overread; } ;
typedef TYPE_2__ ArithCoder ;


 int get_bits1 (int ) ;
 int get_bits_left (int ) ;

__attribute__((used)) static void arith_normalise(ArithCoder *c)
{
    for (;;) {
        if (c->high >= 0x8000) {
            if (c->low < 0x8000) {
                if (c->low >= 0x4000 && c->high < 0xC000) {
                    c->value -= 0x4000;
                    c->low -= 0x4000;
                    c->high -= 0x4000;
                } else {
                    return;
                }
            } else {
                c->value -= 0x8000;
                c->low -= 0x8000;
                c->high -= 0x8000;
            }
        }
        c->value <<= 1;
        c->low <<= 1;
        c->high <<= 1;
        c->high |= 1;
        if (get_bits_left(c->gbc.gb) < 1)
            c->overread++;
        c->value |= get_bits1(c->gbc.gb);
    }
}
