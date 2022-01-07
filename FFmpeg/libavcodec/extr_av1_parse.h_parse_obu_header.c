
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int FFMIN (int,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int init_get_bits8 (int *,int const*,int ) ;
 int leb128 (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static inline int parse_obu_header(const uint8_t *buf, int buf_size,
                                   int64_t *obu_size, int *start_pos, int *type,
                                   int *temporal_id, int *spatial_id)
{
    GetBitContext gb;
    int ret, extension_flag, has_size_flag;
    int64_t size;

    ret = init_get_bits8(&gb, buf, FFMIN(buf_size, 2 + 8));
    if (ret < 0)
        return ret;

    if (get_bits1(&gb) != 0)
        return AVERROR_INVALIDDATA;

    *type = get_bits(&gb, 4);
    extension_flag = get_bits1(&gb);
    has_size_flag = get_bits1(&gb);
    skip_bits1(&gb);

    if (extension_flag) {
        *temporal_id = get_bits(&gb, 3);
        *spatial_id = get_bits(&gb, 2);
        skip_bits(&gb, 3);
    } else {
        *temporal_id = *spatial_id = 0;
    }

    *obu_size = has_size_flag ? leb128(&gb)
                               : buf_size - 1 - extension_flag;

    if (get_bits_left(&gb) < 0)
        return AVERROR_INVALIDDATA;

    *start_pos = get_bits_count(&gb) / 8;

    size = *obu_size + *start_pos;

    if (size > buf_size)
        return AVERROR_INVALIDDATA;

    return size;
}
