#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__* lumpinfo ; 
 int numlumps ; 

int FUNC1 (int lump)
{
    if (lump >= numlumps)
	FUNC0 ("W_LumpLength: %i >= numlumps",lump);

    return lumpinfo[lump].size;
}