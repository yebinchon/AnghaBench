#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; } ;
typedef  TYPE_1__ hb_title_t ;
struct TYPE_14__ {int has_IDRs; int scan; struct TYPE_14__* path; int /*<<< orphan*/ * file_handle; TYPE_1__* title; int /*<<< orphan*/ * h; } ;
typedef  TYPE_2__ hb_stream_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HBTF_NO_IDR ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (char const*) ; 

hb_stream_t *
FUNC10(hb_handle_t *h, const char *path, hb_title_t *title, int scan)
{
    if (title == NULL)
    {
        FUNC5("hb_stream_open: title is null");
        return NULL;
    }

    FILE *f = FUNC4(path, "rb");
    if ( f == NULL )
    {
        FUNC5( "hb_stream_open: open %s failed", path );
        return NULL;
    }

    hb_stream_t *d = FUNC0( sizeof( hb_stream_t ), 1 );
    if ( d == NULL )
    {
        FUNC1( f );
        FUNC5( "hb_stream_open: can't allocate space for %s stream state", path );
        return NULL;
    }

    if (!(title->flags & HBTF_NO_IDR))
    {
        d->has_IDRs = 1;
    }

    /*
     * If it's something we can deal with (MPEG2 PS or TS) return a stream
     * reference structure & null otherwise.
     */
    d->h = h;
    d->file_handle = f;
    d->title = title;
    d->scan = scan;
    d->path = FUNC9( path );
    if (d->path != NULL )
    {
        if (FUNC6( d ) != 0)
        {
            if( !scan )
            {
                FUNC8( d );
            }
            // reset to beginning of file and reset some stream
            // state information
            FUNC7( d, 0. );
            return d;
        }
        FUNC1( d->file_handle );
        d->file_handle = NULL;
        if ( FUNC2( d, title, scan ) )
        {
            return d;
        }
    }
    if ( d->file_handle )
    {
        FUNC1( d->file_handle );
    }
    if (d->path)
    {
        FUNC3( d->path );
    }
    FUNC5( "hb_stream_open: open %s failed", path );
    FUNC3( d );
    return NULL;
}