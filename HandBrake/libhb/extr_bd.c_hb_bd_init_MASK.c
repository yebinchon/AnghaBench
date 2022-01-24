#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_handle_t ;
struct TYPE_4__ {int title_count; int /*<<< orphan*/ * bd; int /*<<< orphan*/  path; int /*<<< orphan*/  disc_info; int /*<<< orphan*/ * title_info; int /*<<< orphan*/ * h; } ;
typedef  TYPE_1__ hb_bd_t ;
typedef  int /*<<< orphan*/  BLURAY_TITLE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  TITLES_RELEVANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  title_info_compare_mpls ; 

hb_bd_t * FUNC10( hb_handle_t *h, const char * path )
{
    hb_bd_t * d;
    int ii;

    d = FUNC5( sizeof( hb_bd_t ), 1 );
    d->h = h;

    /* Open device */
    d->bd = FUNC4( path, NULL );
    if( d->bd == NULL )
    {
        /*
         * Not an error, may be a stream - which we'll try in a moment.
         */
        FUNC7( "bd: not a bd - trying as a stream/file instead" );
        goto fail;
    }

    d->title_count = FUNC3( d->bd, TITLES_RELEVANT, 0 );
    if ( d->title_count == 0 )
    {
        FUNC7( "bd: not a bd - trying as a stream/file instead" );
        goto fail;
    }
    d->title_info = FUNC5( sizeof( BLURAY_TITLE_INFO* ) , d->title_count );
    for ( ii = 0; ii < d->title_count; ii++ )
    {
        d->title_info[ii] = FUNC2( d->bd, ii, 0 );
    }
    FUNC8(d->title_info, d->title_count, sizeof( BLURAY_TITLE_INFO* ), title_info_compare_mpls );
    d->disc_info = FUNC1(d->bd);
    d->path = FUNC9( path );

    return d;

fail:
    if( d->bd ) FUNC0( d->bd );
    FUNC6( d );
    return NULL;
}