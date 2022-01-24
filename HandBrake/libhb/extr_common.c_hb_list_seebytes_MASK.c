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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_3__ {size_t offset; int /*<<< orphan*/ * data; scalar_t__ size; } ;
typedef  TYPE_1__ hb_buffer_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3( hb_list_t * l, uint8_t * dst, int size )
{
    hb_buffer_t * buf;
    int           copied;
    int           copying;
    int           i;

    for( i = 0, copied = 0; copied < size; i++ )
    {
        buf     = FUNC1( l, i );
        copying = FUNC0( buf->size - buf->offset, size - copied );
        FUNC2( &dst[copied], &buf->data[buf->offset], copying );
        copied += copying;
    }
}