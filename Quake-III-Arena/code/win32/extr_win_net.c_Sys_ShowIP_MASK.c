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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** localIP ; 
 int numIP ; 

void FUNC1(void) {
	int i;

	for (i = 0; i < numIP; i++) {
		FUNC0( "IP: %i.%i.%i.%i\n", localIP[i][0], localIP[i][1], localIP[i][2], localIP[i][3] );
	}
}