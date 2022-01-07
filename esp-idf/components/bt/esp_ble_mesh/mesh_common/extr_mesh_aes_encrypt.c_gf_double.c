
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TC_AES_BLOCK_SIZE ;
 int gf_wrap ;

void gf_double(uint8_t *out, uint8_t *in)
{


    uint8_t *x = in + (TC_AES_BLOCK_SIZE - 1);


    uint8_t carry = (in[0] >> 7) ? gf_wrap : 0;

    out += (TC_AES_BLOCK_SIZE - 1);
    for (;;) {
        *out-- = (*x << 1) ^ carry;
        if (x == in) {
            break;
        }
        carry = *x-- >> 7;
    }
}
