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
struct console_printbuf_state {size_t pos; char* str; scalar_t__ total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 

void
FUNC1(struct console_printbuf_state * info) {
	if (info->pos != 0) {
		FUNC0(info->str, info->pos);
	}
	info->pos = 0;
	info->str[info->pos] = '\0';
	info->total = 0;
}