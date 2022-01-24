#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int title_count; struct TYPE_5__* path; scalar_t__ bd; scalar_t__ stream; struct TYPE_5__* title_info; } ;
typedef  TYPE_1__ hb_bd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

void FUNC4( hb_bd_t ** _d )
{
    hb_bd_t * d = *_d;
    int ii;

    if ( d->title_info )
    {
        for ( ii = 0; ii < d->title_count; ii++ )
            FUNC1( d->title_info[ii] );
        FUNC2( d->title_info );
    }
    if( d->stream ) FUNC3( &d->stream );
    if( d->bd ) FUNC0( d->bd );
    if( d->path ) FUNC2( d->path );

    FUNC2( d );
    *_d = NULL;
}