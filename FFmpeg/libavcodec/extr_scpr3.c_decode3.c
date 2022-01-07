
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int code; } ;
typedef TYPE_1__ RangeCoder ;
typedef int GetByteContext ;


 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;

__attribute__((used)) static int decode3(GetByteContext *gb, RangeCoder *rc, uint32_t a, uint32_t b)
{
    uint32_t code = a * (rc->code >> 12) + (rc->code & 0xFFF) - b;

    while (code < 0x800000 && bytestream2_get_bytes_left(gb) > 0)
        code = bytestream2_get_byteu(gb) | (code << 8);
    rc->code = code;

    return 0;
}
