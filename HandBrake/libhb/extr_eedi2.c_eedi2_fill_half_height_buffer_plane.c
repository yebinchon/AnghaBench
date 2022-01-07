
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int *,int) ;

void eedi2_fill_half_height_buffer_plane( uint8_t * src, uint8_t * dst, int pitch, int height )
{



    int y;
    for( y = height; y > 0; y = y - 2 )
    {
      memcpy( dst, src, pitch );
      dst += pitch;
      src += pitch * 2;
    }
}
