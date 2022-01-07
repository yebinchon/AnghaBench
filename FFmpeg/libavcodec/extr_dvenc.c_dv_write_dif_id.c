
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum dv_section_type { ____Placeholder_dv_section_type } dv_section_type ;



__attribute__((used)) static inline int dv_write_dif_id(enum dv_section_type t, uint8_t chan_num,
                                  uint8_t seq_num, uint8_t dif_num,
                                  uint8_t *buf)
{
    int fsc = chan_num & 1;
    int fsp = 1 - (chan_num >> 1);

    buf[0] = (uint8_t) t;
    buf[1] = (seq_num << 4) |
             (fsc << 3) |
             (fsp << 2) |
             3;
    buf[2] = dif_num;
    return 3;
}
