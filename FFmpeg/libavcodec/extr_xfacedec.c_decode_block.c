
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BigInt ;




 int XFACE_WIDTH ;
 int ** ff_xface_probranges_per_level ;
 int pop_greys (int *,char*,int,int) ;
 int pop_integer (int *,int *) ;

__attribute__((used)) static void decode_block(BigInt *b, char *bitmap, int w, int h, int level)
{
    switch (pop_integer(b, &ff_xface_probranges_per_level[level][0])) {
    case 128:
        return;
    case 129:
        pop_greys(b, bitmap, w, h);
        return;
    default:
        w /= 2;
        h /= 2;
        level++;
        decode_block(b, bitmap, w, h, level);
        decode_block(b, bitmap + w, w, h, level);
        decode_block(b, bitmap + h * XFACE_WIDTH, w, h, level);
        decode_block(b, bitmap + w + h * XFACE_WIDTH, w, h, level);
        return;
    }
}
