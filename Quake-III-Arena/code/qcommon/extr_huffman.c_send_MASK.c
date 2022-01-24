#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* parent; } ;
typedef  TYPE_1__ node_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(node_t *node, node_t *child, byte *fout) {
	if (node->parent) {
		FUNC1(node->parent, node, fout);
	}
	if (child) {
		if (node->right == child) {
			FUNC0(1, fout);
		} else {
			FUNC0(0, fout);
		}
	}
}