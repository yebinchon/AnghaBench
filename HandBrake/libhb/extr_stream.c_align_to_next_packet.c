
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int off_t ;
struct TYPE_3__ {int packetsize; int file_handle; int h; } ;
typedef TYPE_1__ hb_stream_t ;
typedef int buf ;


 int HB_ERROR_READ ;
 int MAX_HOLE ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int ferror (int ) ;
 int fread (int const*,int,int,int ) ;
 int fseeko (int ,int,int ) ;
 int ftello (int ) ;
 scalar_t__ have_ts_sync (int const*,int,int) ;
 int hb_error (char*,int) ;
 int hb_set_work_error (int ,int ) ;

__attribute__((used)) static off_t align_to_next_packet(hb_stream_t *stream)
{
    uint8_t buf[MAX_HOLE];
    off_t pos = 0;
    off_t start = ftello(stream->file_handle);
    off_t orig;

    if ( start >= stream->packetsize ) {
        start -= stream->packetsize;
        fseeko(stream->file_handle, start, SEEK_SET);
    }
    orig = start;

    while (1)
    {
        if (fread(buf, sizeof(buf), 1, stream->file_handle) == 1)
        {
            const uint8_t *bp = buf;
            int i;

            for ( i = sizeof(buf) - 8 * stream->packetsize; --i >= 0; ++bp )
            {
                if ( have_ts_sync( bp, stream->packetsize, 8 ) )
                {
                    break;
                }
            }
            if ( i >= 0 )
            {
                pos = ( bp - buf ) - stream->packetsize + 188;
                break;
            }
            fseeko(stream->file_handle, -8 * stream->packetsize, SEEK_CUR);
            start = ftello(stream->file_handle);
        }
        else
        {
            int err;
            if ((err = ferror(stream->file_handle)) != 0)
            {
                hb_error("align_to_next_packet: error (%d)", err);
                hb_set_work_error(stream->h, HB_ERROR_READ);
            }
            return 0;
        }
    }
    fseeko(stream->file_handle, start+pos, SEEK_SET);
    return start - orig + pos;
}
