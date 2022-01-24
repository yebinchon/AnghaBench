#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numLeafs; TYPE_1__* leafs; } ;
struct TYPE_3__ {int area; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 TYPE_2__ cm ; 

int		FUNC1( int leafnum ) {
	if ( leafnum < 0 || leafnum >= cm.numLeafs ) {
		FUNC0 (ERR_DROP, "CM_LeafArea: bad number");
	}
	return cm.leafs[leafnum].area;
}