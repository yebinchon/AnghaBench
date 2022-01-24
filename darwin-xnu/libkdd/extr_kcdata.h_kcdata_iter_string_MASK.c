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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  kcdata_iter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static inline
char *FUNC3(kcdata_iter_t iter, uint32_t offset) {
	if (offset > FUNC1(iter)) {
		return NULL;
	}
	uint32_t maxlen = FUNC1(iter) - offset;
	char *s = ((char*)FUNC0(iter)) + offset;
	if (FUNC2(s, maxlen) < maxlen) {
		return s;
	} else {
		return NULL;
	}
}