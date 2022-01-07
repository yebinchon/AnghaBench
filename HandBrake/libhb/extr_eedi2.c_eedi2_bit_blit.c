
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int const*,int) ;

void eedi2_bit_blit( uint8_t * dstp, int dst_pitch,
                     const uint8_t * srcp, int src_pitch,
                     int row_size, int height )
{
    if( ( !height ) || ( !row_size ) )
        return;

    if( height == 1 || ( dst_pitch == src_pitch && src_pitch == row_size ) )
    {
        memcpy( dstp, srcp, row_size * height );
    }
    else
    {
        int y;
        for( y = height; y > 0; --y )
        {
            memcpy( dstp, srcp, row_size );
            dstp += dst_pitch;
            srcp += src_pitch;
        }
    }
}
