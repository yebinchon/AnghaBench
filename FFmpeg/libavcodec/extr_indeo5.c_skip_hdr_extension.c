
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static inline int skip_hdr_extension(GetBitContext *gb)
{
    int i, len;

    do {
        len = get_bits(gb, 8);
        if (8*len > get_bits_left(gb))
            return AVERROR_INVALIDDATA;
        for (i = 0; i < len; i++) skip_bits(gb, 8);
    } while(len);

    return 0;
}
