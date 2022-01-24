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
typedef  scalar_t__ guint64 ;
typedef  scalar_t__* gconstpointer ;
typedef  int gboolean ;

/* Variables and functions */

__attribute__((used)) static gboolean FUNC0(gconstpointer _a, gconstpointer _b) {
	const guint64 *a = _a;
	const guint64 *b = _b;

	return *a == *b;
}