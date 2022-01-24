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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,...) ; 
 int /*<<< orphan*/  vnode_label_copy ; 
 int /*<<< orphan*/  vnode_label_init ; 

void
FUNC1(struct label *src, struct label *dest)
{
	if (src == NULL) {
		FUNC0(vnode_label_init, dest);
	} else {
		FUNC0(vnode_label_copy, src, dest);
	}
}