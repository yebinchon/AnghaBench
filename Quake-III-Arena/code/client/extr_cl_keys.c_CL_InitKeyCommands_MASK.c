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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Key_Bind_f ; 
 int /*<<< orphan*/  Key_Bindlist_f ; 
 int /*<<< orphan*/  Key_Unbind_f ; 
 int /*<<< orphan*/  Key_Unbindall_f ; 

void FUNC1( void ) {
	// register our functions
	FUNC0 ("bind",Key_Bind_f);
	FUNC0 ("unbind",Key_Unbind_f);
	FUNC0 ("unbindall",Key_Unbindall_f);
	FUNC0 ("bindlist",Key_Bindlist_f);
}