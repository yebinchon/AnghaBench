
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avpriv_codec2_mode_block_align (void*,int) ;
 int avpriv_codec2_mode_frame_size (void*,int) ;

int avpriv_codec2_mode_bit_rate(void *logctx, int mode)
{
    int frame_size = avpriv_codec2_mode_frame_size(logctx, mode);
    int block_align = avpriv_codec2_mode_block_align(logctx, mode);

    if (frame_size <= 0 || block_align <= 0) {
        return 0;
    }

    return 8 * 8000 * block_align / frame_size;
}
