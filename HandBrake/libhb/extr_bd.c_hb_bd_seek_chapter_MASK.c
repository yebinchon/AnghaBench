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
struct TYPE_3__ {int next_chap; int /*<<< orphan*/  stream; int /*<<< orphan*/  bd; } ;
typedef  TYPE_1__ hb_bd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2( hb_bd_t * d, int c )
{
    d->next_chap = c;
    FUNC0( d->bd, c - 1 );
    FUNC1(d->stream);
    return 1;
}