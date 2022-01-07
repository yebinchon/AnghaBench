
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int endian_swap_rate (int*) ;
 int mem_cpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int permute (int*) ;
 int squeeze_permute (int*,unsigned char*) ;
 int xor128 (int*,unsigned char const*) ;

void uc_hash(uint32_t st[12], unsigned char h[32], const unsigned char *msg, size_t len)
{
    unsigned char padded[16 + 1];
    size_t off = 0;
    size_t leftover;

    if (len > 16) {
        for (; off < len - 16; off += 16) {
            endian_swap_rate(st);
            xor128(st, &msg[off]);
            endian_swap_rate(st);
            permute(st);
        }
    }
    leftover = len - off;
    memset(padded, 0, 16);
    mem_cpy(padded, &msg[off], leftover);
    padded[leftover] = 0x80;
    endian_swap_rate(st);
    xor128(st, padded);
    endian_swap_rate(st);
    st[11] ^= (1UL << 24 | (uint32_t) leftover >> 4 << 25);
    permute(st);
    squeeze_permute(st, &h[0]);
    squeeze_permute(st, &h[16]);
}
