
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_12__ {int PCR_PID; } ;
struct TYPE_13__ {int ts_number_pat_entries; TYPE_2__ pmt_info; TYPE_1__* pat_info; int file_handle; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_11__ {scalar_t__ program_number; int program_map_PID; } ;


 int P ;
 int SEEK_END ;
 int SEEK_SET ;
 int align_to_next_packet (TYPE_3__*) ;
 scalar_t__ build_program_map (int const*,TYPE_3__*) ;
 int decode_PAT (int const*,TYPE_3__*) ;
 int fseeko (int ,int,int ) ;
 int ftello (int ) ;
 int hb_log (char*) ;
 int* next_packet (TYPE_3__*) ;
 scalar_t__ ts_index_of_video (TYPE_3__*) ;
 int update_ts_streams (TYPE_3__*,int ,int ,int,int ,int *) ;

__attribute__((used)) static int hb_ts_stream_find_pids(hb_stream_t *stream)
{




    fseeko(stream->file_handle, 0, SEEK_END);
    uint64_t fsize = ftello(stream->file_handle);
    fseeko(stream->file_handle, fsize >> 1, SEEK_SET);
    align_to_next_packet(stream);




    for (;;)
    {
        const uint8_t *buf = next_packet( stream );

        if ( buf == ((void*)0) )
        {
            hb_log("hb_ts_stream_find_pids - end of file");
            break;
        }


        int pid = (((buf[1] & 0x1F) << 8) | buf[2]) & 0x1FFF;

        if ((pid == 0x0000) && (stream->ts_number_pat_entries == 0))
        {
            decode_PAT(buf, stream);
            continue;
        }

        int pat_index = 0;
        for (pat_index = 0; pat_index < stream->ts_number_pat_entries; pat_index++)
        {
            if (stream->pat_info[pat_index].program_number != 0 &&
                pid == stream->pat_info[pat_index].program_map_PID)
            {
                if (build_program_map(buf, stream) > 0)
                {
                    break;
                }
            }
        }

        if ( ts_index_of_video( stream ) >= 0 )
          break;
    }
    if ( ts_index_of_video( stream ) < 0 )
        return -1;
    update_ts_streams( stream, stream->pmt_info.PCR_PID, 0, -1, P, ((void*)0) );
    return 0;
}
