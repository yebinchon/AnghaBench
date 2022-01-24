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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BLURAY ;

/* Variables and functions */
 int MAX_HOLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static uint64_t FUNC5(BLURAY *bd, uint8_t *pkt)
{
    int      result;
    uint8_t  buf[MAX_HOLE];
    uint64_t pos = 0;
    uint64_t start = FUNC2(bd);
    uint64_t orig;
    uint64_t off = 192;

    FUNC4(buf, pkt, 192);
    if ( start >= 192 ) {
        start -= 192;
    }
    orig = start;

    while (1)
    {
        result = FUNC0(bd, buf + off, sizeof(buf) - off);
        if (result == sizeof(buf) - off)
        {
            const uint8_t *bp = buf;
            int i;

            for ( i = sizeof(buf) - 8 * 192; --i >= 0; ++bp )
            {
                if ( FUNC3( bp, 192 ) )
                {
                    break;
                }
            }
            if ( i >= 0 )
            {
                pos = ( bp - buf );
                break;
            }
            off = 8 * 192;
            FUNC4(buf, buf + sizeof(buf) - off, off);
            start += sizeof(buf) - off;
        }
        else if (result < 0)
        {
            return -1;
        }
        else
        {
            return 0;
        }
    }
    off = start + pos - 4;
    // bd_seek seeks to the nearest access unit *before* the requested position
    // we don't want to seek backwards, so we need to read until we get
    // past that position.
    FUNC1(bd, off);
    while (off > FUNC2(bd))
    {
        result = FUNC0(bd, buf, 192);
        if (result < 0)
        {
            return -1;
        }
        else if (result != 192)
        {
            return 0;
        }
    }
    return start - orig + pos;
}