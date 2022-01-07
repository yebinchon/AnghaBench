
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV1_OBU_FRAME ;
 int AV1_OBU_TILE_GROUP ;
 int AVERROR (int ) ;
 int ERANGE ;
 int INT_MAX ;
 scalar_t__ ff_ctz (int) ;

__attribute__((used)) static inline int get_obu_bit_length(const uint8_t *buf, int size, int type)
{
    int v;


    if (type == AV1_OBU_TILE_GROUP || type == AV1_OBU_FRAME) {
        if (size > INT_MAX / 8)
            return AVERROR(ERANGE);
        else
            return size * 8;
    }

    while (size > 0 && buf[size - 1] == 0)
        size--;

    if (!size)
        return 0;

    v = buf[size - 1];

    if (size > INT_MAX / 8)
        return AVERROR(ERANGE);
    size *= 8;


    if (v)
        size -= ff_ctz(v) + 1;

    return size;
}
