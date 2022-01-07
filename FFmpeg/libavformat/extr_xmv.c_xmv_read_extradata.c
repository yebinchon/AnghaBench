
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int AVIOContext ;


 int AV_WB32 (int *,int) ;
 int avio_rl32 (int *) ;

__attribute__((used)) static void xmv_read_extradata(uint8_t *extradata, AVIOContext *pb)
{


    uint32_t data = avio_rl32(pb);

    int mspel_bit = !!(data & 0x01);
    int loop_filter = !!(data & 0x02);
    int abt_flag = !!(data & 0x04);
    int j_type_bit = !!(data & 0x08);
    int top_left_mv_flag = !!(data & 0x10);
    int per_mb_rl_bit = !!(data & 0x20);
    int slice_count = (data >> 6) & 7;



    data = 0;

    data |= mspel_bit << 15;
    data |= loop_filter << 14;
    data |= abt_flag << 13;
    data |= j_type_bit << 12;
    data |= top_left_mv_flag << 11;
    data |= per_mb_rl_bit << 10;
    data |= slice_count << 7;

    AV_WB32(extradata, data);
}
