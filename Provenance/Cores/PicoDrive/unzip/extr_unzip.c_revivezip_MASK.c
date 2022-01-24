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
struct TYPE_4__ {scalar_t__ fp; int /*<<< orphan*/  zip; } ;
typedef  TYPE_1__ ZIP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ZIP* FUNC1(ZIP* zip) {
	if (!zip->fp) {
		zip->fp = FUNC0(zip->zip, "rb");
		if (!zip->fp) {
			return 0;
		}
	}
	return zip;

}