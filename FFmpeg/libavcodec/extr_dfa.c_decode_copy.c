
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int const bytestream2_get_buffer (int *,int *,int const) ;

__attribute__((used)) static int decode_copy(GetByteContext *gb, uint8_t *frame, int width, int height)
{
    const int size = width * height;

    if (bytestream2_get_buffer(gb, frame, size) != size)
        return AVERROR_INVALIDDATA;
    return 0;
}
