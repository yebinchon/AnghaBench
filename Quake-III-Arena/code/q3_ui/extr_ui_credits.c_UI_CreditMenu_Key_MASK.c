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
typedef  int /*<<< orphan*/  sfxHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 int K_CHAR_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static sfxHandle_t FUNC1( int key ) {
	if( key & K_CHAR_FLAG ) {
		return 0;
	}

	FUNC0( EXEC_APPEND, "quit\n" );
	return 0;
}