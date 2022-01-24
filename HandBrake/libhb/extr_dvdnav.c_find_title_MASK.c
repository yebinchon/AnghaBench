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
struct TYPE_3__ {int index; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_list_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2( hb_list_t * list_title, int title )
{
    int ii;

    for ( ii = 0; ii < FUNC0( list_title ); ii++ )
    {
        hb_title_t * hbtitle = FUNC1( list_title, ii );
        if ( hbtitle->index == title )
            return ii;
    }
    return -1;
}