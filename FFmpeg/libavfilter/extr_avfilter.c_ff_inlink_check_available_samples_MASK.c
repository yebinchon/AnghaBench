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
typedef  unsigned int uint64_t ;
struct TYPE_3__ {scalar_t__ status_in; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(AVFilterLink *link, unsigned min)
{
    uint64_t samples = FUNC1(&link->fifo);
    FUNC0(min);
    return samples >= min || (link->status_in && samples);
}