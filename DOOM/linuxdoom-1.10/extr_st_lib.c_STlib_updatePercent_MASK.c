#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__* on; } ;
struct TYPE_4__ {TYPE_3__ n; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ st_percent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2
( st_percent_t*		per,
  int			refresh )
{
    if (refresh && *per->n.on)
	FUNC1(per->n.x, per->n.y, FG, per->p);
    
    FUNC0(&per->n, refresh);
}