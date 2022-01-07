
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gB; } ;
struct TYPE_5__ {int high; int low; TYPE_1__ gbc; } ;
typedef TYPE_2__ ArithCoder ;


 int bytestream2_tell (int ) ;

__attribute__((used)) static int arith2_get_consumed_bytes(ArithCoder *c)
{
    int diff = (c->high >> 16) - (c->low >> 16);
    int bp = bytestream2_tell(c->gbc.gB) - 3 << 3;
    int bits = 1;

    while (!(diff & 0x80)) {
        bits++;
        diff <<= 1;
    }

    return (bits + bp + 7 >> 3) + ((c->low >> 16) + 1 == c->high >> 16);
}
