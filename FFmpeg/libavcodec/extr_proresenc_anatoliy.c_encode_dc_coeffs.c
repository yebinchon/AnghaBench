
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;
typedef int PutBitContext ;


 int DIFF_SIGN (int,int) ;
 size_t FFMIN (int,int) ;
 int FIRST_DC_CB ;
 int QSCALE (int*,int ,scalar_t__) ;
 int TO_GOLOMB (int) ;
 int TO_GOLOMB2 (int ,int) ;
 int * dc_codebook ;
 int encode_codeword (int *,int,int ) ;
 int get_level (int) ;

__attribute__((used)) static void encode_dc_coeffs(PutBitContext *pb, int16_t *in,
        int blocks_per_slice, int *qmat)
{
    int prev_dc, code;
    int i, sign, idx;
    int new_dc, delta, diff_sign, new_code;

    prev_dc = QSCALE(qmat, 0, in[0] - 16384);
    code = TO_GOLOMB(prev_dc);
    encode_codeword(pb, code, FIRST_DC_CB);

    code = 5; sign = 0; idx = 64;
    for (i = 1; i < blocks_per_slice; i++, idx += 64) {
        new_dc = QSCALE(qmat, 0, in[idx] - 16384);
        delta = new_dc - prev_dc;
        diff_sign = DIFF_SIGN(delta, sign);
        new_code = TO_GOLOMB2(get_level(delta), diff_sign);

        encode_codeword(pb, new_code, dc_codebook[FFMIN(code, 6)]);

        code = new_code;
        sign = delta >> 31;
        prev_dc = new_dc;
    }
}
