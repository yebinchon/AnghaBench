#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* fMessage ) (char*,int /*<<< orphan*/ ) ;scalar_t__ (* fGetSaveFilename ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* UI_driver ; 
 int /*<<< orphan*/  UI_n_saved_files_dir ; 
 int /*<<< orphan*/  UI_saved_files_dir ; 
 int /*<<< orphan*/  state_filename ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (UI_driver->fGetSaveFilename(state_filename, UI_saved_files_dir, UI_n_saved_files_dir)) {
		int result;
		UI_driver->fMessage("Please wait while saving...", 0);
		result = FUNC1(state_filename, "wb", TRUE);
		if (!result)
			FUNC0(state_filename);
	}
}