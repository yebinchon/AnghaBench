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
 int /*<<< orphan*/  BOTLIB_GET_CONSOLE_MESSAGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 

int FUNC1(int clientNum, char *message, int size) {
	return FUNC0( BOTLIB_GET_CONSOLE_MESSAGE, clientNum, message, size );
}