
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fill; int queue; } ;
typedef int GetByteContext ;
typedef TYPE_1__ Bits32 ;


 int bytestream2_get_le32 (int *) ;

__attribute__((used)) static void fill_bits32(Bits32 *bits, GetByteContext *gb)
{
    bits->queue = bytestream2_get_le32(gb);
    bits->fill = 32;
}
