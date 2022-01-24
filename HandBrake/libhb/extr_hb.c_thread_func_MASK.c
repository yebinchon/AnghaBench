#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_10__ {scalar_t__ paused; int /*<<< orphan*/  error; } ;
struct TYPE_11__ {TYPE_2__ working; } ;
struct TYPE_12__ {TYPE_3__ param; int /*<<< orphan*/  state; } ;
struct TYPE_9__ {int /*<<< orphan*/  list_title; } ;
struct TYPE_13__ {scalar_t__ work_thread; scalar_t__ scan_thread; scalar_t__ pause_date; scalar_t__ pause_duration; TYPE_4__ state; scalar_t__ paused; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  work_error; TYPE_1__ title_set; scalar_t__ scan_die; int /*<<< orphan*/  die; int /*<<< orphan*/  pid; } ;
typedef  TYPE_5__ hb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  HB_STATE_SCANDONE ; 
 int /*<<< orphan*/  HB_STATE_WORKDONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18( void * _h )
{
    hb_handle_t * h = (hb_handle_t *) _h;
    char * dirname;

    h->pid = FUNC1();

    /* Create folder for temporary files */
    dirname = FUNC3();

    FUNC9( dirname );
    FUNC0(dirname);

    while( !h->die )
    {
        /* Check if the scan thread is done */
        if( h->scan_thread &&
            FUNC15( h->scan_thread ) )
        {
            FUNC14( &h->scan_thread );

            if ( h->scan_die )
            {
                hb_title_t * title;

                FUNC10( h );
                while( ( title = FUNC5( h->title_set.list_title, 0 ) ) )
                {
                    FUNC6( h->title_set.list_title, title );
                    FUNC16( &title );
                }

                FUNC8( "hb_scan: canceled" );
            }
            else
            {
                FUNC8( "libhb: scan thread found %d valid title(s)",
                        FUNC4( h->title_set.list_title ) );
            }
            FUNC7( h->state_lock );
            h->state.state = HB_STATE_SCANDONE;
            FUNC17( h->state_lock );
        }

        /* Check if the work thread is done */
        if( h->work_thread &&
            FUNC15( h->work_thread ) )
        {
            FUNC14( &h->work_thread );

            FUNC8( "libhb: work result = %d", h->work_error );
            FUNC7( h->state_lock );
            h->state.state               = HB_STATE_WORKDONE;
            h->state.param.working.error = h->work_error;

            FUNC17( h->state_lock );
        }

        if (h->paused)
        {
            h->state.param.working.paused = h->pause_duration +
                                            FUNC2() - h->pause_date;
        }
        FUNC12( 50 );
    }

    if( h->scan_thread )
    {
        FUNC11( h );
        FUNC14( &h->scan_thread );
    }
    if( h->work_thread )
    {
        FUNC13( h );
        FUNC14( &h->work_thread );
    }
    FUNC10( h );
}