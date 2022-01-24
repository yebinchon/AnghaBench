#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  PCR_PID; } ;
struct TYPE_13__ {int ts_number_pat_entries; TYPE_2__ pmt_info; TYPE_1__* pat_info; int /*<<< orphan*/  file_handle; } ;
typedef  TYPE_3__ hb_stream_t ;
struct TYPE_11__ {scalar_t__ program_number; int program_map_PID; } ;

/* Variables and functions */
 int /*<<< orphan*/  P ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int* FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(hb_stream_t *stream)
{
    // To be different from every other broadcaster in the world, New Zealand TV
    // changes PMTs (and thus video & audio PIDs) when 'programs' change. Since
    // we may have the tail of the previous program at the beginning of this
    // file, take our PMT from the middle of the file.
    FUNC3(stream->file_handle, 0, SEEK_END);
    uint64_t fsize = FUNC4(stream->file_handle);
    FUNC3(stream->file_handle, fsize >> 1, SEEK_SET);
    FUNC0(stream);

    // Read the Transport Stream Packets (188 bytes each) looking at first for PID 0 (the PAT PID), then decode that
    // to find the program map PID and then decode that to get the list of audio and video PIDs

    for (;;)
    {
        const uint8_t *buf = FUNC6( stream );

        if ( buf == NULL )
        {
            FUNC5("hb_ts_stream_find_pids - end of file");
            break;
        }

        // Get pid
        int pid = (((buf[1] & 0x1F) << 8) | buf[2]) & 0x1FFF;

        if ((pid == 0x0000) && (stream->ts_number_pat_entries == 0))
        {
            FUNC2(buf, stream);
            continue;
        }

        int pat_index = 0;
        for (pat_index = 0; pat_index < stream->ts_number_pat_entries; pat_index++)
        {
            // There are some streams where the PAT table has multiple
            // entries as if their are multiple programs in the same
            // transport stream, and yet there's actually only one
            // program really in the stream. This seems to be true for
            // transport streams that originate in the HDHomeRun but have
            // been output by EyeTV's export utility. What I think is
            // happening is that the HDHomeRun is sending the entire
            // transport stream as broadcast, but the EyeTV is only
            // recording a single (selected) program number and not
            // rewriting the PAT info on export to match what's actually
            // on the stream. Until we have a way of handling multiple
            // programs per transport stream elegantly we'll match on the
            // first pat entry for which we find a matching program map PID.
            // The ideal solution would be to build a title choice popup
            // from the PAT program number details and then select from
            // their - but right now the API's not capable of that.
            if (stream->pat_info[pat_index].program_number != 0 &&
                pid == stream->pat_info[pat_index].program_map_PID)
            {
                if (FUNC1(buf, stream) > 0)
                {
                    break;
                }
            }
        }
        // Keep going  until we have a complete set of PIDs
        if ( FUNC7( stream ) >= 0 )
          break;
    }
    if ( FUNC7( stream ) < 0 )
        return -1;
    FUNC8( stream, stream->pmt_info.PCR_PID, 0, -1, P, NULL );
    return 0;
}