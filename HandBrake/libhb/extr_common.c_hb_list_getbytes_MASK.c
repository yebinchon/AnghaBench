#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_6__ {size_t start; } ;
struct TYPE_7__ {size_t size; size_t offset; TYPE_1__ s; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ hb_buffer_t ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int) ; 

void FUNC5( hb_list_t * l, uint8_t * dst, int size,
                       uint64_t * pts, uint64_t * pos )
{
    hb_buffer_t * buf;
    int           copied;
    int           copying;
    uint8_t       has_pts;

    /* So we won't have to deal with NULL pointers */
     uint64_t dummy1, dummy2;

    if( !pts ) pts = &dummy1;
    if( !pos ) pos = &dummy2;

    for( copied = 0, has_pts = 0; copied < size;  )
    {
        buf     = FUNC2( l, 0 );
        copying = FUNC0( buf->size - buf->offset, size - copied );
        FUNC4( &dst[copied], &buf->data[buf->offset], copying );

        if( !has_pts )
        {
            *pts    = buf->s.start;
            *pos    = buf->offset;
            has_pts = 1;
        }

        buf->offset += copying;
        if( buf->offset >= buf->size )
        {
            FUNC3( l, buf );
            FUNC1( &buf );
        }

        copied += copying;
    }
}