
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bit_index; int g; } ;
typedef TYPE_1__ Jpeg2000DecoderContext ;


 int bytestream2_get_byte (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static void jpeg2000_flush(Jpeg2000DecoderContext *s)
{
    if (bytestream2_get_byte(&s->g) == 0xff)
        bytestream2_skip(&s->g, 1);
    s->bit_index = 8;
}
