
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int* pixels; } ;
struct TYPE_4__ {unsigned int depth; unsigned int size; TYPE_3__* blocks; int member_0; } ;
typedef int MacroBlock ;
typedef int GetBitContext ;
typedef TYPE_1__ CodeBook ;


 int INT_MAX ;
 TYPE_3__* av_malloc (unsigned int) ;
 unsigned int get_bits (int *,int) ;
 unsigned int get_bits_left (int *) ;

__attribute__((used)) static CodeBook unpack_codebook(GetBitContext* gb, unsigned depth,
                                 unsigned size)
{
    unsigned i, j;
    CodeBook cb = { 0 };

    if (size >= INT_MAX / 34 || get_bits_left(gb) < size * 34)
        return cb;

    if (size >= INT_MAX / sizeof(MacroBlock))
        return cb;
    cb.blocks = av_malloc(size ? size * sizeof(MacroBlock) : 1);
    if (!cb.blocks)
        return cb;

    cb.depth = depth;
    cb.size = size;
    for (i = 0; i < size; i++) {
        unsigned mask_bits = get_bits(gb, 4);
        unsigned color0 = get_bits(gb, 15);
        unsigned color1 = get_bits(gb, 15);

        for (j = 0; j < 4; j++) {
            if (mask_bits & (1 << j))
                cb.blocks[i].pixels[j] = color1;
            else
                cb.blocks[i].pixels[j] = color0;
        }
    }
    return cb;
}
