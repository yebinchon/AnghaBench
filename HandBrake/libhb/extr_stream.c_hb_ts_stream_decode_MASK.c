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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  hb_stream_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static hb_buffer_t * FUNC4( hb_stream_t *stream )
{
    hb_buffer_t * b;

    // spin until we get a packet of data from some stream or hit eof
    while ( 1 )
    {
        const uint8_t *buf = FUNC3(stream);
        if ( buf == NULL )
        {
            // end of file - we didn't finish filling our ps write buffer
            // so just discard the remainder (the partial buffer is useless)
            FUNC1("hb_ts_stream_decode - eof");
            b = FUNC0(stream);
            return b;
        }

        b = FUNC2( stream, buf, 0, 0 );
        if ( b )
        {
            return b;
        }
    }
    return NULL;
}