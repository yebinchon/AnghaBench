#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ network_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 

network_address *FUNC3(network_address *dst, network_address *src) {
	if (!dst) dst = FUNC2();

	dst->len = src->len;
	dst->addr = src->addr;
	FUNC1(dst->name, FUNC0(src->name));

	return dst;
}