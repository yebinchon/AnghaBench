#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int packetsize; int /*<<< orphan*/  hb_stream_type; int /*<<< orphan*/  file_handle; } ;
typedef  TYPE_1__ hb_stream_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  program ; 
 int /*<<< orphan*/  transport ; 

__attribute__((used)) static int FUNC6(hb_stream_t *stream)
{
    uint8_t buf[2048*4];

    if ( FUNC0(buf, 1, sizeof(buf), stream->file_handle) == sizeof(buf) )
    {
        int psize;
        if ( ( psize = FUNC4(buf) ) != 0 )
        {
            int offset = psize >> 8;
            psize &= 0xff;
            FUNC1("file is MPEG Transport Stream with %d byte packets"
                   " offset %d bytes", psize, offset);
            stream->packetsize = psize;
            stream->hb_stream_type = transport;
            if (FUNC5(stream) == 0)
                return 1;
        }
        else if ( FUNC3(stream) != 0 )
        {
            FUNC1("file is MPEG Program Stream");
            stream->hb_stream_type = program;
            FUNC2(stream);
            // We default to mpeg codec for ps streams if no
            // video found in program stream map
            return 1;
        }
    }
    return 0;
}