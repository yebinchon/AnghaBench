
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int range; int code; scalar_t__ code1; } ;
typedef TYPE_1__ RangeCoder ;
typedef int GetByteContext ;


 int bytestream2_get_be32 (int *) ;

__attribute__((used)) static void init_rangecoder(RangeCoder *rc, GetByteContext *gb)
{
    rc->code1 = 0;
    rc->range = 0xFFFFFFFFU;
    rc->code = bytestream2_get_be32(gb);
}
