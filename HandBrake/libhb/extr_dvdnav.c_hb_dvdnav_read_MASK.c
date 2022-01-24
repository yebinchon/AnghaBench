#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int stopped; int title; int chapter; int /*<<< orphan*/  cell; int /*<<< orphan*/  list_dvd_chapter; int /*<<< orphan*/  dvdnav; int /*<<< orphan*/  h; } ;
typedef  TYPE_2__ hb_dvdnav_t ;
struct TYPE_12__ {TYPE_2__ dvdnav; } ;
typedef  TYPE_3__ hb_dvd_t ;
struct TYPE_10__ {int new_chap; } ;
struct TYPE_13__ {TYPE_1__ s; scalar_t__ data; } ;
typedef  TYPE_4__ hb_buffer_t ;
struct TYPE_14__ {int /*<<< orphan*/  cellN; } ;
typedef  TYPE_5__ dvdnav_cell_change_event_t ;

/* Variables and functions */
#define  DVDNAV_AUDIO_STREAM_CHANGE 140 
#define  DVDNAV_BLOCK_OK 139 
#define  DVDNAV_CELL_CHANGE 138 
#define  DVDNAV_HIGHLIGHT 137 
#define  DVDNAV_HOP_CHANNEL 136 
#define  DVDNAV_NAV_PACKET 135 
#define  DVDNAV_NOP 134 
#define  DVDNAV_SPU_CLUT_CHANGE 133 
#define  DVDNAV_SPU_STREAM_CHANGE 132 
 int DVDNAV_STATUS_ERR ; 
 scalar_t__ DVDNAV_STATUS_OK ; 
#define  DVDNAV_STILL_FRAME 131 
#define  DVDNAV_STOP 130 
#define  DVDNAV_VTS_CHANGE 129 
#define  DVDNAV_WAIT 128 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HB_DVD_READ_BUFFER_SIZE ; 
 int /*<<< orphan*/  HB_ERROR_READ ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static hb_buffer_t * FUNC12( hb_dvd_t * e )
{
    hb_dvdnav_t * d = &(e->dvdnav);
    int result, event, len;
    int chapter = 0;
    int error_count = 0;
    hb_buffer_t *b = FUNC8( HB_DVD_READ_BUFFER_SIZE );

    while ( 1 )
    {
        if (d->stopped)
        {
            FUNC7( &b );
            return NULL;
        }
        result = FUNC3( d->dvdnav, b->data, &event, &len );
        if ( result == DVDNAV_STATUS_ERR )
        {
            FUNC10("dvdnav: Read Error, %s", FUNC2(d->dvdnav));
            if (FUNC4(d->dvdnav, 1, SEEK_CUR) != DVDNAV_STATUS_OK)
            {
                FUNC10( "dvd: dvdnav_sector_search failed - %s",
                        FUNC2(d->dvdnav) );
                FUNC7( &b );
                FUNC11(d->h, HB_ERROR_READ);
                return NULL;
            }
            error_count++;
            if (error_count > 500)
            {
                FUNC10("dvdnav: Error, too many consecutive read errors");
                FUNC7( &b );
                FUNC11(d->h, HB_ERROR_READ);
                return NULL;
            }
            continue;
        }
        switch ( event )
        {
        case DVDNAV_BLOCK_OK:
            // We have received a regular block of the currently playing
            // MPEG stream.
            b->s.new_chap = chapter;
            chapter = 0;
            error_count = 0;
            return b;

        case DVDNAV_NOP:
            /*
            * Nothing to do here.
            */
            break;

        case DVDNAV_STILL_FRAME:
            /*
            * We have reached a still frame. A real player application
            * would wait the amount of time specified by the still's
            * length while still handling user input to make menus and
            * other interactive stills work. A length of 0xff means an
            * indefinite still which has to be skipped indirectly by some
            * user interaction.
            */
            FUNC5( d->dvdnav );
            break;

        case DVDNAV_WAIT:
            /*
            * We have reached a point in DVD playback, where timing is
            * critical. Player application with internal fifos can
            * introduce state inconsistencies, because libdvdnav is
            * always the fifo's length ahead in the stream compared to
            * what the application sees. Such applications should wait
            * until their fifos are empty when they receive this type of
            * event.
            */
            FUNC6( d->dvdnav );
            break;

        case DVDNAV_SPU_CLUT_CHANGE:
            /*
            * Player applications should pass the new colour lookup table
            * to their SPU decoder
            */
            break;

        case DVDNAV_SPU_STREAM_CHANGE:
            /*
            * Player applications should inform their SPU decoder to
            * switch channels
            */
            break;

        case DVDNAV_AUDIO_STREAM_CHANGE:
            /*
            * Player applications should inform their audio decoder to
            * switch channels
            */
            break;

        case DVDNAV_HIGHLIGHT:
            /*
            * Player applications should inform their overlay engine to
            * highlight the given button
            */
            break;

        case DVDNAV_VTS_CHANGE:
            /*
            * Some status information like video aspect and video scale
            * permissions do not change inside a VTS. Therefore this
            * event can be used to query such information only when
            * necessary and update the decoding/displaying accordingly.
            */
            {
                int tt = 0, pgcn = 0, pgn = 0;

                FUNC1(d->dvdnav, &tt, &pgcn, &pgn);
                if (tt != d->title)
                {
                    // Transition to another title signals that we are done.
                    FUNC7( &b );
                    FUNC9(2, "dvdnav: vts change, found next title");
                    return NULL;
                }
            }
            break;

        case DVDNAV_CELL_CHANGE:
            /*
            * Some status information like the current Title and Part
            * numbers do not change inside a cell. Therefore this event
            * can be used to query such information only when necessary
            * and update the decoding/displaying accordingly.
            */
            {
                dvdnav_cell_change_event_t * cell_event;
                int tt = 0, pgcn = 0, pgn = 0, c;

                cell_event = (dvdnav_cell_change_event_t*)b->data;

                FUNC1(d->dvdnav, &tt, &pgcn, &pgn);
                if (tt != d->title)
                {
                    // Transition to another title signals that we are done.
                    FUNC7( &b );
                    FUNC9(2, "dvdnav: cell change, found next title");
                    return NULL;
                }
                c = FUNC0(d->list_dvd_chapter, pgcn, pgn);
                if (c != d->chapter)
                {
                    if (c < d->chapter)
                    {
                        // Some titles end with a 'link' back to the beginning so
                        // a transition to an earlier chapter means we're done.
                        FUNC7( &b );
                        FUNC9(2, "dvdnav: cell change, previous chapter");
                        return NULL;
                    }
                    chapter = d->chapter = c;
                }
                else if ( cell_event->cellN <= d->cell )
                {
                    FUNC7( &b );
                    FUNC9(2, "dvdnav: cell change, previous cell");
                    return NULL;
                }
                d->cell = cell_event->cellN;
            }
            break;

        case DVDNAV_NAV_PACKET:
            /*
            * A NAV packet provides PTS discontinuity information, angle
            * linking information and button definitions for DVD menus.
            * Angles are handled completely inside libdvdnav. For the
            * menus to work, the NAV packet information has to be passed
            * to the overlay engine of the player so that it knows the
            * dimensions of the button areas.
            */

            // mpegdemux expects to get these.  I don't think it does
            // anything useful with them however.
            b->s.new_chap = chapter;
            return b;

            break;

        case DVDNAV_HOP_CHANNEL:
            /*
            * This event is issued whenever a non-seamless operation has
            * been executed. Applications with fifos should drop the
            * fifos content to speed up responsiveness.
            */
            break;

        case DVDNAV_STOP:
            /*
            * Playback should end here.
            */
            d->stopped = 1;
            FUNC7( &b );
            FUNC9(2, "dvdnav: stop");
            return NULL;

        default:
            break;
        }
    }
    FUNC7( &b );
    return NULL;
}