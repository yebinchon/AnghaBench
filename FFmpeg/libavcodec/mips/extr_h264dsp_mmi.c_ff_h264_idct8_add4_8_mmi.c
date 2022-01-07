
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ int16_t ;


 int ff_h264_idct8_add_8_mmi (int*,scalar_t__*,int) ;
 int ff_h264_idct8_dc_add_8_mmi (int*,scalar_t__*,int) ;
 size_t* scan8 ;

void ff_h264_idct8_add4_8_mmi(uint8_t *dst, const int *block_offset,
        int16_t *block, int stride, const uint8_t nnzc[15*8])
{
    int i;
    for(i=0; i<16; i+=4){
        int nnz = nnzc[ scan8[i] ];
        if(nnz){
            if(nnz==1 && ((int16_t*)block)[i*16])
                ff_h264_idct8_dc_add_8_mmi(dst + block_offset[i],
                        block + i*16, stride);
            else
                ff_h264_idct8_add_8_mmi(dst + block_offset[i], block + i*16,
                        stride);
        }
    }
}
