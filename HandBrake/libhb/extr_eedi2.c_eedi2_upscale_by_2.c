
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int *,int) ;

void eedi2_upscale_by_2( uint8_t * srcp, uint8_t * dstp, int height, int pitch )
{
    int y;
    for( y = height; y > 0; y-- )
    {
      memcpy( dstp, srcp, pitch );
      dstp += pitch;
      memcpy( dstp, srcp, pitch );
      srcp += pitch;
      dstp += pitch;
    }
}
