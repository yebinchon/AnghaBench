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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  hb_debug_level_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int const) ; 

void FUNC4( hb_debug_level_t level, const char * label, const uint8_t * data, int len )
{
    int ii;
    char line[80], ascii[19], *p;

    ascii[18] = 0;
    ascii[0] = '|';
    ascii[17] = '|';
    FUNC2(&ascii[1], '.', 16);
    p = line;
    if( label )
        FUNC0(level, "++++ %s ++++", label);
    else
        FUNC0(level, "++++++++++++");
    for( ii = 0; ii < len; ii++ )
    {
        if( ( ii & 0x0f ) == 0x0f )
        {
            p += FUNC3( p, "%02x", data[ii] );
            FUNC0( level, "    %-50s%20s", line, ascii );
            FUNC2(&ascii[1], '.', 16);
            p = line;
        }
        else if( ( ii & 0x07 ) == 0x07 )
        {
            p += FUNC3( p, "%02x  ", data[ii] );
        }
        else
        {
            p += FUNC3( p, "%02x ", data[ii] );
        }
        if( FUNC1( data[ii] ) )
            ascii[(ii & 0x0f) + 1] = data[ii];
        else
            ascii[(ii & 0x0f) + 1] = '.';
    }
    if( p != line )
    {
        FUNC0( level, "    %-50s%20s", line, ascii );
    }
}