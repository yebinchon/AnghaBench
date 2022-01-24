#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned int FUNC0 (unsigned short,unsigned int,short*) ; 

__attribute__((used)) static void FUNC1( unsigned char * frame_src,
                                    unsigned char * frame_dst,
                                    unsigned short * line_ant,
                                    unsigned short * frame_ant,
                                    int w, int h,
                                    short * spatial,
                                    short * temporal )
{
    int x, y;
    unsigned int pixel_ant;
    unsigned int tmp;

    spatial  += 0x1000;
    temporal += 0x1000;

    /* First line has no top neighbor. Only left one for each tmp and last frame */
    pixel_ant = frame_src[0]<<8;
    for ( x = 0; x < w; x++)
    {
        line_ant[x] = tmp = pixel_ant = FUNC0( pixel_ant,
                                                            frame_src[x]<<8,
                                                            spatial );
        frame_ant[x] = tmp = FUNC0( frame_ant[x],
                                                 tmp,
                                                 temporal );
        frame_dst[x] = (tmp+0x7F)>>8;
    }

    for( y = 1; y < h; y++ )
    {
        frame_src += w;
        frame_dst += w;
        frame_ant += w;
        pixel_ant = frame_src[0]<<8;
        for ( x = 0; x < w-1; x++ )
        {
            line_ant[x] = tmp =  FUNC0( line_ant[x],
                                                     pixel_ant,
                                                     spatial );
            pixel_ant =          FUNC0( pixel_ant,
                                                     frame_src[x+1]<<8,
                                                     spatial );
            frame_ant[x] = tmp = FUNC0( frame_ant[x],
                                                     tmp,
                                                     temporal );
            frame_dst[x] = (tmp+0x7F)>>8;
        }
        line_ant[x] = tmp =  FUNC0( line_ant[x],
                                                 pixel_ant,
                                                 spatial );
        frame_ant[x] = tmp = FUNC0( frame_ant[x],
                                                 tmp,
                                                 temporal );
        frame_dst[x] = (tmp+0x7F)>>8;
    }
}