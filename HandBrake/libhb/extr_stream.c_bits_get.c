
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int val; int* buf; } ;
typedef TYPE_1__ bitbuf_t ;


 int* bitmask ;

__attribute__((used)) static inline unsigned int bits_get(bitbuf_t *bb, int bits)
{
    unsigned int val;
    int left = 32 - (bb->pos & 31);

    if (bits < left)
    {
        val = (bb->val >> (left - bits)) & bitmask[bits];
        bb->pos += bits;
    }
    else
    {
        val = (bb->val & bitmask[left]) << (bits - left);
        bb->pos += left;
        bits -= left;

        int pos = bb->pos >> 3;
        bb->val = (bb->buf[pos] << 24) | (bb->buf[pos + 1] << 16) | (bb->buf[pos + 2] << 8) | bb->buf[pos + 3];

        if (bits > 0)
        {
            val |= (bb->val >> (32 - bits)) & bitmask[bits];
            bb->pos += bits;
        }
    }

    return val;
}
