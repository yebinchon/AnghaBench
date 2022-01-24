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
typedef  int /*<<< orphan*/  msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

void FUNC1( msg_t *msg, int key, float oldV, float newV ) {
	if ( oldV == newV ) {
		FUNC0( msg, 0, 1 );
		return;
	}
	FUNC0( msg, 1, 1 );
	FUNC0( msg, (*(int *)&newV) ^ key, 32 );
}