
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* list; } ;
struct TYPE_8__ {void* PCR_PID; int tablepos; int tablebuf; } ;
struct TYPE_11__ {TYPE_3__ pes; void* reg_desc; TYPE_1__ pmt_info; } ;
typedef TYPE_4__ hb_stream_t ;
typedef int bitbuf_t ;
struct TYPE_9__ {int map_idx; } ;


 int bits_clone (int *,int *,unsigned int) ;
 void* bits_get (int *,int) ;
 int bits_init (int *,int ,int ,int ) ;
 int bits_skip (int *,int) ;
 int decode_element_descriptors (TYPE_4__*,int,int *) ;
 int update_ts_streams (TYPE_4__*,unsigned int,int ,unsigned char,int,int*) ;

int decode_program_map(hb_stream_t* stream)
{
    bitbuf_t bb;
    bits_init(&bb, stream->pmt_info.tablebuf, stream->pmt_info.tablepos, 0);

    bits_get(&bb, 8);
    bits_get(&bb, 4);
    unsigned int section_length = bits_get(&bb, 12);

    bits_get(&bb, 16);
    bits_get(&bb, 2);
    bits_get(&bb, 5);
    bits_get(&bb, 1);
    bits_get(&bb, 8);
    bits_get(&bb, 8);
    bits_get(&bb, 3);
    stream->pmt_info.PCR_PID = bits_get(&bb, 13);
    bits_get(&bb, 4);
    int program_info_length = bits_get(&bb, 12);
    int i;
    for (i = 0; i < program_info_length - 2; )
    {
        uint8_t tag, len;
        tag = bits_get(&bb, 8);
        len = bits_get(&bb, 8);
        i += 2;
        if ( i + len > program_info_length )
        {
            break;
        }
        if (tag == 0x05 && len >= 4)
        {

            stream->reg_desc = bits_get(&bb, 32);
            i += 4;
            len -= 4;
        }
        int j;
        for ( j = 0; j < len; j++ )
        {
            bits_get(&bb, 8);
        }
        i += len;
    }
    for ( ; i < program_info_length; i++ )
    {
        bits_get(&bb, 8);
    }

    int cur_pos = 9 + program_info_length;
    int done_reading_stream_types = 0;
    int ii = 0;
    while (!done_reading_stream_types)
    {
        unsigned char stream_type = bits_get(&bb, 8);
        bits_get(&bb, 3);
        unsigned int elementary_PID = bits_get(&bb, 13);
        bits_get(&bb, 4);
        unsigned int info_len = bits_get(&bb, 12);







        int pes_idx;
        update_ts_streams( stream, elementary_PID, 0,
                           stream_type, -1, &pes_idx );
        if ( pes_idx >= 0 )
            stream->pes.list[pes_idx].map_idx = ii;
        if (info_len > 0)
        {
            bitbuf_t bb_desc;
            bits_clone( &bb_desc, &bb, info_len );
            if ( pes_idx >= 0 )
                decode_element_descriptors( stream, pes_idx, &bb_desc );
            bits_skip(&bb, 8 * info_len);
        }

        cur_pos += 5 + info_len;

        if (cur_pos >= section_length - 4 )
            done_reading_stream_types = 1;
        ii++;
    }

    return 1;
}
