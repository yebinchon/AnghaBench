
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code1; int code; } ;
typedef TYPE_1__ RangeCoder ;
typedef int GetByteContext ;


 int bytestream2_get_le32 (int *) ;

__attribute__((used)) static void sync_code3(GetByteContext *gb, RangeCoder *rc)
{
    rc->code1++;
    if (rc->code1 == 0x20000) {
        rc->code = bytestream2_get_le32(gb);
        rc->code1 = 0;
    }
}
