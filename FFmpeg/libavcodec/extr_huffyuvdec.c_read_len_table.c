
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits_left (int *) ;

__attribute__((used)) static int read_len_table(uint8_t *dst, GetBitContext *gb, int n)
{
    int i, val, repeat;

    for (i = 0; i < n;) {
        repeat = get_bits(gb, 3);
        val = get_bits(gb, 5);
        if (repeat == 0)
            repeat = get_bits(gb, 8);
        if (i + repeat > n || get_bits_left(gb) < 0) {
            av_log(((void*)0), AV_LOG_ERROR, "Error reading huffman table\n");
            return AVERROR_INVALIDDATA;
        }
        while (repeat--)
            dst[i++] = val;
    }
    return 0;
}
