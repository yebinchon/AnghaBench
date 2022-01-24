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
typedef  int /*<<< orphan*/  node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ c_merge ; 
 scalar_t__ c_nodefaces ; 
 scalar_t__ c_subdivide ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2 (node_t *node)
{
	FUNC1 ("--- MakeFaces ---\n");
	c_merge = 0;
	c_subdivide = 0;
	c_nodefaces = 0;

	FUNC0 (node);

	FUNC1 ("%5i makefaces\n", c_nodefaces);
	FUNC1 ("%5i merged\n", c_merge);
	FUNC1 ("%5i subdivided\n", c_subdivide);
}