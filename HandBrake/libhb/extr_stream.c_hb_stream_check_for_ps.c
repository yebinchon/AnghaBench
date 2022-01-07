
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int file_handle; } ;
typedef TYPE_1__ hb_stream_t ;
typedef int buf ;


 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ check_ps_sc (int*) ;
 scalar_t__ check_ps_sync (int*) ;
 int fread (int*,int,int,int ) ;
 int fseek (int ,int,int ) ;
 int ftell (int ) ;

__attribute__((used)) static int hb_stream_check_for_ps(hb_stream_t *stream)
{
    uint8_t buf[2048*4];
    uint8_t sc_buf[4];
    int pos = 0;

    fseek(stream->file_handle, 0, SEEK_SET);



    while (pos < 512 * 1024)
    {
        int offset;

        if ( fread(buf, 1, sizeof(buf), stream->file_handle) != sizeof(buf) )
            return 0;

        for ( offset = 0; offset < 8*1024-27; ++offset )
        {
            if ( check_ps_sync( &buf[offset] ) && check_ps_sc( &buf[offset] ) )
            {
                int pes_offset, prev, data_len;
                uint8_t sid;
                uint8_t *b = buf+offset;


                int mark = buf[4] >> 4;
                if ( mark == 0x02 )
                {

                    pes_offset = 12;
                }
                else
                {

                    pes_offset = 14 + ( buf[13] & 0x7 );
                }

                b += pes_offset;

                sid = b[3];
                data_len = (b[4] << 8) + b[5];
                if ( data_len && sid > 0xba && sid < 0xf9 )
                {
                    prev = ftell( stream->file_handle );
                    pos = prev - ( sizeof(buf) - offset );
                    pos += pes_offset + 6 + data_len;
                    fseek( stream->file_handle, pos, SEEK_SET );
                    if ( fread(sc_buf, 1, 4, stream->file_handle) != 4 )
                        return 0;
                    if (sc_buf[0] == 0x00 && sc_buf[1] == 0x00 &&
                        sc_buf[2] == 0x01)
                    {
                        return 1;
                    }
                    fseek( stream->file_handle, prev, SEEK_SET );
                }
            }
        }
        fseek( stream->file_handle, -27, SEEK_CUR );
        pos = ftell( stream->file_handle );
    }
    return 0;
}
