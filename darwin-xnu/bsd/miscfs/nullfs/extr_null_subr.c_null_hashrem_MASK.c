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
struct null_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct null_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_hash ; 
 int /*<<< orphan*/  null_hashmtx ; 

void
FUNC3(struct null_node * xp)
{
	FUNC1(&null_hashmtx);
	FUNC0(xp, null_hash);
	FUNC2(&null_hashmtx);
}