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
typedef  int /*<<< orphan*/  GKeyFile ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  G_KEY_FILE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 

GKeyFile *FUNC4(const char *filename, GError **gerr) {
	GKeyFile *keyfile;
/*
	if (chassis_filemode_check_full(filename, CHASSIS_FILEMODE_SECURE_MASK, gerr) != 0) {
		return NULL;
	}
*/
	keyfile = FUNC2();
	FUNC3(keyfile, ',');

	if (FALSE == FUNC1(keyfile, filename, G_KEY_FILE_NONE, gerr)) {
		FUNC0(keyfile);

		return NULL;
	}

	return keyfile;
}