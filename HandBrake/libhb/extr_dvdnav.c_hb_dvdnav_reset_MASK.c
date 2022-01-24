#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dvdnav; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ hb_dvdnav_t ;

/* Variables and functions */
 scalar_t__ DVDNAV_STATUS_OK ; 
 int /*<<< orphan*/  DVD_READ_CACHE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9( hb_dvdnav_t * d )
{
    char * path_ccp = FUNC8( d->path );
    if ( d->dvdnav )
        FUNC0( d->dvdnav );

    /* Open device */
    if( FUNC2(&d->dvdnav, path_ccp) != DVDNAV_STATUS_OK )
    {
        /*
         * Not an error, may be a stream - which we'll try in a moment.
         */
        FUNC7( "dvd: not a dvd - trying as a stream/file instead" );
        goto fail;
    }

    if (FUNC4(d->dvdnav, DVD_READ_CACHE) !=
        DVDNAV_STATUS_OK)
    {
        FUNC6("Error: dvdnav_set_readahead_flag: %s\n",
                 FUNC1(d->dvdnav));
        goto fail;
    }

    /*
     ** set the PGC positioning flag to have position information
     ** relatively to the whole feature instead of just relatively to the
     ** current chapter
     **/
    if (FUNC3(d->dvdnav, 1) != DVDNAV_STATUS_OK)
    {
        FUNC6("Error: dvdnav_set_PGC_positioning_flag: %s\n",
                 FUNC1(d->dvdnav));
        goto fail;
    }

    FUNC5( path_ccp );

    return 1;

fail:
    if( d->dvdnav ) FUNC0( d->dvdnav );
    FUNC5( path_ccp );
    return 0;
}