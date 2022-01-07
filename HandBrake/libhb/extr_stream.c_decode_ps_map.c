
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_1__* list; } ;
struct TYPE_9__ {TYPE_2__ pes; void* reg_desc; } ;
typedef TYPE_3__ hb_stream_t ;
typedef int bitbuf_t ;
struct TYPE_7__ {int map_idx; } ;


 int bits_bytes_left (int *) ;
 int bits_clone (int *,int *,int) ;
 void* bits_get (int *,int) ;
 int bits_init (int *,int*,int,int ) ;
 int bits_skip (int *,int) ;
 int decode_element_descriptors (TYPE_3__*,int,int *) ;
 int update_ps_streams (TYPE_3__*,int,int,int,int) ;

__attribute__((used)) static int decode_ps_map( hb_stream_t * stream, uint8_t *buf, int len )
{
    int retval = 1;
    bitbuf_t bb;
    bits_init(&bb, buf, len, 0);

    if ( bits_bytes_left(&bb) < 10 )
        return 0;


    bits_skip(&bb, 8 * 8);
    int info_len = bits_get(&bb, 16);
    if ( bits_bytes_left(&bb) < info_len )
        return 0;

    if ( info_len )
    {
        bitbuf_t cc;
        bits_clone( &cc, &bb, info_len );

        while ( bits_bytes_left(&cc) >= 2 )
        {
            uint8_t tag, len;

            tag = bits_get(&cc, 8);
            len = bits_get(&cc, 8);
            if ( bits_bytes_left(&cc) < len )
                return 0;

            if (tag == 0x05 && len >= 4)
            {

                stream->reg_desc = bits_get(&cc, 32);
                bits_skip(&cc, 8 * (len - 4));
            }
            else
            {
                bits_skip(&cc, 8 * len);
            }
        }
        bits_skip(&bb, 8 * info_len);
    }

    int map_len = bits_get(&bb, 16);
    if ( bits_bytes_left(&bb) < map_len )
        return 0;


    int ii = 0;
    while ( bits_bytes_left(&bb) >= 8 )
    {
        int pes_idx;
        int stream_type = bits_get(&bb, 8);
        int stream_id = bits_get(&bb, 8);
        info_len = bits_get(&bb, 16);
        if ( info_len > bits_bytes_left(&bb) )
            return 0;

        int substream_id = 0;
        switch ( stream_type )
        {
            case 0x81:
            case 0x82:
            case 0x83:
            case 0x87:
                if ( stream_id < 0xb9 )
                {
                    substream_id = stream_id;
                    stream_id = 0xbd;
                }
                break;
            default:
                break;
        }

        pes_idx = update_ps_streams( stream, stream_id, substream_id,
                                     stream_type, -1 );
        if ( pes_idx >= 0 )
            stream->pes.list[pes_idx].map_idx = ii;

        if ( info_len > 0 )
        {
            bitbuf_t bb_desc;
            bits_clone( &bb_desc, &bb, info_len );
            if ( pes_idx >= 0 )
                decode_element_descriptors( stream, pes_idx, &bb_desc );
            bits_skip(&bb, 8 * info_len);
        }
        ii++;
    }

    return retval;
}
