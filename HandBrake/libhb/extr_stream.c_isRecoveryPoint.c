
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CreateDecodedNAL (int**,int*,int const*,int) ;
 int free (int*) ;

__attribute__((used)) static int isRecoveryPoint( const uint8_t *buf, int len )
{
    uint8_t *nal;
    int nal_len;
    int ii, type, size;
    int recovery_frames = 0;

    CreateDecodedNAL( &nal, &nal_len, buf, len );

    for ( ii = 0; ii+1 < nal_len; )
    {
        type = 0;
        while ( ii+1 < nal_len )
        {
            type += nal[ii++];
            if ( nal[ii-1] != 0xff )
                break;
        }
        size = 0;
        while ( ii+1 < nal_len )
        {
            size += nal[ii++];
            if ( nal[ii-1] != 0xff )
                break;
        }

        if( type == 6 )
        {
            recovery_frames = 1;
            break;
        }
        ii += size;
    }

    free( nal );
    return recovery_frames;
}
