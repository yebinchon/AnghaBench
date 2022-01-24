#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  list_coverart; } ;
typedef  TYPE_1__ hb_metadata_t ;
struct TYPE_8__ {struct TYPE_8__* data; } ;
typedef  TYPE_2__ hb_coverart_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC3( hb_metadata_t *metadata, int idx )
{
    if ( metadata )
    {
        hb_coverart_t *art = FUNC1( metadata->list_coverart, idx );
        if ( art )
        {
            FUNC2( metadata->list_coverart, art );
            FUNC0( art->data );
            FUNC0( art );
        }
    }
}