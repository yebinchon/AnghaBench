#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;
struct TYPE_5__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  chapter; int /*<<< orphan*/  next_chap; int /*<<< orphan*/  h; int /*<<< orphan*/  bd; } ;
typedef  TYPE_1__ hb_bd_t ;
struct TYPE_6__ {int event; int /*<<< orphan*/  param; } ;
typedef  TYPE_2__ BD_EVENT ;

/* Variables and functions */
#define  BD_EVENT_CHAPTER 131 
#define  BD_EVENT_END_OF_TITLE 130 
#define  BD_EVENT_PLAYITEM 129 
#define  BD_EVENT_STILL 128 
 int /*<<< orphan*/  HB_ERROR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*) ; 

hb_buffer_t * FUNC10( hb_bd_t * d )
{
    int result;
    int error_count = 0;
    int retry_count = 0;
    uint8_t buf[192];
    BD_EVENT event;
    uint64_t pos;
    hb_buffer_t * out = NULL;
    uint8_t discontinuity;

    while ( 1 )
    {
        discontinuity = 0;
        result = FUNC9( d->bd, buf );
        while ( FUNC0( d->bd, &event ) )
        {
            switch ( event.event )
            {
                case BD_EVENT_CHAPTER:
                    // The muxers expect to only get chapter 2 and above
                    // They write chapter 1 when chapter 2 is detected.
                    if (event.param > d->chapter)
                    {
                        d->next_chap = event.param;
                    }
                    break;

                case BD_EVENT_PLAYITEM:
                    discontinuity = 1;
                    FUNC4(2, "bd: Play item %u", event.param);
                    break;

                case BD_EVENT_STILL:
                    FUNC1( d->bd );
                    break;

                case BD_EVENT_END_OF_TITLE:
                    FUNC6("bd: End of title");
                    if (result <= 0)
                    {
                        return NULL;
                    }
                    break;

                default:
                    break;
            }
        }

        if ( result < 0 )
        {
            FUNC5("bd: Read Error");
            pos = FUNC3( d->bd );
            FUNC2( d->bd, pos + 192 );
            error_count++;
            if (error_count > 10)
            {
                FUNC5("bd: Error, too many consecutive read errors");
                FUNC7(d->h, HB_ERROR_READ);
                return NULL;
            }
            continue;
        }
        else if ( result == 0 )
        {
            // libbluray returns 0 when it encounters and skips a bad unit.
            // So retry a few times to be certain there is no more data
            // to be read.
            retry_count++;
            if (retry_count > 1000)
            {
                // A unit is 6144 bytes (32 TS packets).  Give up after we've
                // seen > 6MB of invalid data.
                return NULL;
            }
            continue;
        }

        if (retry_count > 0)
        {
            FUNC5("bd: Read Error, skipping bad data.");
            retry_count = 0;
        }

        error_count = 0;
        // buf+4 to skip the BD timestamp at start of packet
        if (d->chapter != d->next_chap)
        {
            d->chapter = d->next_chap;
            out = FUNC8(d->stream, buf+4, d->chapter, discontinuity);
        }
        else
        {
            out = FUNC8(d->stream, buf+4, 0, discontinuity);
        }
        if (out != NULL)
        {
            return out;
        }
    }
    return NULL;
}