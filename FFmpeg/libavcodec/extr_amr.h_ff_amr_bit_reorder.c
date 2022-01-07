
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int R_TABLE_TYPE ;


 int memset (int*,int ,int) ;

__attribute__((used)) static inline void ff_amr_bit_reorder(uint16_t *out, int size,
                                      const uint8_t *data,
                                      const R_TABLE_TYPE *ord_table)
{
    int field_size;

    memset(out, 0, size);
    while ((field_size = *ord_table++)) {
        int field = 0;
        int field_offset = *ord_table++;
        while (field_size--) {
           int bit = *ord_table++;
           field <<= 1;
           field |= data[bit >> 3] >> (bit & 7) & 1;
        }
        out[field_offset >> 1] = field;
    }
}
