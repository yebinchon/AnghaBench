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
#define  INT_MAX 129 
#define  INT_MIN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 

FUNC1() {
	int i;

	for (i = INT_MIN; i <= INT_MIN+5; i++)
		switch (i) {
		case INT_MIN:	FUNC0("0\n"); break;
		case INT_MIN+1:	FUNC0("1\n"); break;
		case INT_MIN+2:	FUNC0("2\n"); break;
		case INT_MIN+3:	FUNC0("3\n"); break;
		case INT_MIN+4:	FUNC0("4\n"); break;
		default:	FUNC0("5\n"); break;
		}
	for (i = INT_MAX; i >= INT_MAX-5; i--)
		switch (i) {
		case INT_MAX:	FUNC0("0\n"); break;
		case INT_MAX-1:	FUNC0("1\n"); break;
		case INT_MAX-2:	FUNC0("2\n"); break;
		case INT_MAX-3:	FUNC0("3\n"); break;
		case INT_MAX-4:	FUNC0("4\n"); break;
		default:	FUNC0("5\n"); break;
		}
}