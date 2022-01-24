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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  CFG_RW ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAVE_BINARY_FILE_NAME_SWITCH ; 

bool FUNC2(CFG_RW *rw, FOLDER *f, wchar_t *name, UINT *written_size)
{
	return FUNC0(rw, f, name, written_size, FUNC1(SAVE_BINARY_FILE_NAME_SWITCH));
}