#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pullup_frame {int length; int parity; int /*<<< orphan*/  lock; scalar_t__ buffer; scalar_t__* ofields; scalar_t__* ifields; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

void FUNC1( struct pullup_frame * fr )
{
    int i;
    for( i = 0; i < fr->length; i++ )
    {
        FUNC0( fr->ifields[i], fr->parity ^ (i&1) );
    }
    FUNC0( fr->ofields[0], 0 );
    FUNC0( fr->ofields[1], 1 );
    if (fr->buffer) FUNC0( fr->buffer, 2 );
    fr->lock--;
}