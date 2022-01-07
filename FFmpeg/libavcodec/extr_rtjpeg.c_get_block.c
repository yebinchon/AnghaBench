
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int16_t ;
typedef int GetBitContext ;


 int ALIGN (int) ;
 int AVERROR_INVALIDDATA ;
 int PUT_COEFF (int) ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int get_sbits (int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline int get_block(GetBitContext *gb, int16_t *block, const uint8_t *scan,
                            const uint32_t *quant) {
    int coeff, i, n;
    int8_t ac;
    uint8_t dc = get_bits(gb, 8);


    if (dc == 255)
       return 0;


    coeff = get_bits(gb, 6);
    if (get_bits_left(gb) < (coeff << 1))
        return AVERROR_INVALIDDATA;



    memset(block, 0, 64 * sizeof(int16_t));


    while (coeff) {
        ac = get_sbits(gb, 2);
        if (ac == -2)
            break;
        PUT_COEFF(ac);
    }


    ALIGN(4);
    if (get_bits_left(gb) < (coeff << 2))
        return AVERROR_INVALIDDATA;
    while (coeff) {
        ac = get_sbits(gb, 4);
        if (ac == -8)
            break;
        PUT_COEFF(ac);
    }


    ALIGN(8);
    if (get_bits_left(gb) < (coeff << 3))
        return AVERROR_INVALIDDATA;
    while (coeff) {
        ac = get_sbits(gb, 8);
        PUT_COEFF(ac);
    }

    PUT_COEFF(dc);
    return 1;
}
