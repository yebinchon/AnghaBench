#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ list_coverart; void* long_description; void* description; void* genre; void* album; void* comment; void* release_date; void* composer; void* album_artist; void* artist; void* name; } ;
typedef  TYPE_1__ hb_metadata_t ;
struct TYPE_9__ {int /*<<< orphan*/  type; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ hb_coverart_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_2__* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 

hb_metadata_t *FUNC5( const hb_metadata_t *src )
{
    hb_metadata_t *metadata = NULL;

    if ( src )
    {
        metadata = FUNC0( 1, sizeof(*metadata) );
        if ( src->name )
        {
            metadata->name = FUNC4(src->name);
        }
        if ( src->artist )
        {
            metadata->artist = FUNC4(src->artist);
        }
        if ( src->album_artist )
        {
            metadata->album_artist = FUNC4(src->album_artist);
        }
        if ( src->composer )
        {
            metadata->composer = FUNC4(src->composer);
        }
        if ( src->release_date )
        {
            metadata->release_date = FUNC4(src->release_date);
        }
        if ( src->comment )
        {
            metadata->comment = FUNC4(src->comment);
        }
        if ( src->album )
        {
            metadata->album = FUNC4(src->album);
        }
        if ( src->genre )
        {
            metadata->genre = FUNC4(src->genre);
        }
        if ( src->description )
        {
            metadata->description = FUNC4(src->description);
        }
        if ( src->long_description )
        {
            metadata->long_description = FUNC4(src->long_description);
        }
        if ( src->list_coverart )
        {
            int ii;
            for ( ii = 0; ii < FUNC1( src->list_coverart ); ii++ )
            {
                hb_coverart_t *art = FUNC2( src->list_coverart, ii );
                FUNC3(
                        metadata, art->data, art->size, art->type );
            }
        }
    }
    return metadata;
}