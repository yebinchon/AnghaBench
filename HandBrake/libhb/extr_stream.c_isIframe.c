
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {TYPE_3__* list; } ;
struct TYPE_7__ {TYPE_1__ pes; } ;
typedef TYPE_2__ hb_stream_t ;
struct TYPE_8__ {int stream_type; scalar_t__ codec_param; } ;
typedef TYPE_3__ hb_pes_stream_t ;


 scalar_t__ AV_CODEC_ID_H264 ;
 scalar_t__ AV_CODEC_ID_MPEG1VIDEO ;
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 scalar_t__ AV_CODEC_ID_MPEG4 ;
 scalar_t__ AV_CODEC_ID_VC1 ;
 int isRecoveryPoint (int const*,int) ;
 int pes_index_of_video (TYPE_2__*) ;

__attribute__((used)) static int isIframe( hb_stream_t *stream, const uint8_t *buf, int len )
{



    int ii;
    uint32_t strid = 0;


    int vid = pes_index_of_video( stream );
    hb_pes_stream_t *pes = &stream->pes.list[vid];
    if ( pes->stream_type <= 2 ||
         pes->codec_param == AV_CODEC_ID_MPEG1VIDEO ||
         pes->codec_param == AV_CODEC_ID_MPEG2VIDEO )
    {

        for (ii = 0; ii < len; ii++)
        {
            strid = (strid << 8) | buf[ii];
            if ( ( strid >> 8 ) == 1 )
            {

                uint8_t id = strid;
                switch ( id )
                {
                    case 0xB8:
                    case 0xB3:
                        return 1;

                    case 0x00:

                        if (ii < len - 3)
                        {

                            if ((buf[ii+2] & (0x7 << 3)) == (1 << 3))
                            {

                                return 1;
                            }
                        }
                        break;
                }
            }
        }

        return 0;
    }
    if ( pes->stream_type == 0x1b || pes->codec_param == AV_CODEC_ID_H264 )
    {

        for (ii = 0; ii < len; ii++)
        {
            strid = (strid << 8) | buf[ii];
            if ( ( strid >> 8 ) == 1 )
            {

                uint8_t nal_type = strid & 0x1f;
                if ( nal_type == 0x01 )
                {

                    return 0;
                }
                if ( nal_type == 0x05 )
                {

                    return 1;
                }
                else if ( nal_type == 0x06 )
                {
                    int off = ii + 1;
                    int recovery_frames = isRecoveryPoint( buf+off, len-off );
                    if ( recovery_frames )
                    {
                        return recovery_frames;
                    }
                }
            }
        }

        return 0;
    }
    if ( pes->stream_type == 0xea || pes->codec_param == AV_CODEC_ID_VC1 )
    {

        for (ii = 0; ii < len; ii++)
        {
            strid = (strid << 8) | buf[ii];
            if ( strid == 0x10f )
            {


                return 1;
            }
        }

        return 0;
    }
    if ( pes->stream_type == 0x10 || pes->codec_param == AV_CODEC_ID_MPEG4 )
    {

        for (ii = 0; ii < len-1; ii++)
        {
            strid = (strid << 8) | buf[ii];
            if ( strid == 0x1b6 )
            {
                if ((buf[ii+1] & 0xC0) == 0)
                    return 1;
            }
        }

        return 0;
    }



    return 1;
}
