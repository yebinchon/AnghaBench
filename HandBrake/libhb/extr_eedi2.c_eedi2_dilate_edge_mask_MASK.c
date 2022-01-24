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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int*,int,int,int) ; 

void FUNC1( uint8_t *mskp, int msk_pitch, uint8_t *dstp, int dst_pitch,
                             int dstr, int height, int width )
{
    int x, y;

    FUNC0( dstp, dst_pitch, mskp, msk_pitch, width, height );

    mskp += msk_pitch;
    unsigned char *mskpp = mskp - msk_pitch;
    unsigned char *mskpn = mskp + msk_pitch;
    dstp += dst_pitch;
    for( y = 1; y < height - 1; ++y )
    {
        for( x = 1; x < width - 1; ++x )
        {
            if( mskp[x] != 0 )
                continue;

            int count = 0;
            if( mskpp[x-1] == 0xFF ) ++count;
            if( mskpp[x]   == 0xFF ) ++count;
            if( mskpp[x+1] == 0xFF ) ++count;
            if(  mskp[x-1] == 0xFF ) ++count;
            if(  mskp[x+1] == 0xFF ) ++count;
            if( mskpn[x-1] == 0xFF ) ++count;
            if( mskpn[x]   == 0xFF ) ++count;
            if( mskpn[x+1] == 0xFF ) ++count;

            if( count >= dstr )
                dstp[x] = 0xFF;
        }
        mskpp += msk_pitch;
        mskp += msk_pitch;
        mskpn += msk_pitch;
        dstp += dst_pitch;
    }
}