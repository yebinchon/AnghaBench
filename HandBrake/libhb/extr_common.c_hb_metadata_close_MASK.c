#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ list_coverart; struct TYPE_7__* data; struct TYPE_7__* long_description; struct TYPE_7__* description; struct TYPE_7__* genre; struct TYPE_7__* album_artist; struct TYPE_7__* album; struct TYPE_7__* comment; struct TYPE_7__* release_date; struct TYPE_7__* composer; struct TYPE_7__* artist; struct TYPE_7__* name; } ;
typedef  TYPE_1__ hb_metadata_t ;
typedef  TYPE_1__ hb_coverart_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 

void FUNC4( hb_metadata_t **_m )
{
    if ( _m && *_m )
    {
        hb_metadata_t *m = *_m;
        hb_coverart_t *art;

        FUNC0( m->name );
        FUNC0( m->artist );
        FUNC0( m->composer );
        FUNC0( m->release_date );
        FUNC0( m->comment );
        FUNC0( m->album );
        FUNC0( m->album_artist );
        FUNC0( m->genre );
        FUNC0( m->description );
        FUNC0( m->long_description );

        if ( m->list_coverart )
        {
            while( ( art = FUNC2( m->list_coverart, 0 ) ) )
            {
                FUNC3( m->list_coverart, art );
                FUNC0( art->data );
                FUNC0( art );
            }
            FUNC1( &m->list_coverart );
        }

        FUNC0( m );
        *_m = NULL;
    }
}