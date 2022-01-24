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
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  hb_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  h; int /*<<< orphan*/  list_file; } ;
typedef  TYPE_1__ hb_batch_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int) ; 

hb_title_t * FUNC7( hb_batch_t * d, int t )
{

    hb_title_t   * title;
    char         * filename;
    hb_stream_t  * stream;

    if ( t < 0 )
        return NULL;

    filename = FUNC0( d->list_file, t - 1 );
    if ( filename == NULL )
        return NULL;

    FUNC1( "batch: scanning %s", filename );
    title = FUNC6( filename, t );
    stream = FUNC3(d->h, filename, title, 1);
    if ( stream == NULL )
    {
        FUNC5( &title );
        return NULL;
    }

    title = FUNC4( stream, title );
    FUNC2( &stream );

    return title;
}