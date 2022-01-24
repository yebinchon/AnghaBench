#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  YuiFileEntryClass ;
struct TYPE_3__ {int /*<<< orphan*/  get_property; int /*<<< orphan*/  set_property; } ;
typedef  int /*<<< orphan*/  GParamSpec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int G_PARAM_READABLE ; 
 int G_PARAM_WRITABLE ; 
 int /*<<< orphan*/  PROP_GROUP ; 
 int /*<<< orphan*/  PROP_KEY ; 
 int /*<<< orphan*/  PROP_KEYFILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  yui_file_entry_get_property ; 
 int /*<<< orphan*/  yui_file_entry_set_property ; 

__attribute__((used)) static void FUNC3 (YuiFileEntryClass * klass) {
	GParamSpec * param;

	FUNC0(klass)->set_property = yui_file_entry_set_property;
	FUNC0(klass)->get_property = yui_file_entry_get_property;

	param = FUNC2("key-file", 0, 0, G_PARAM_READABLE | G_PARAM_WRITABLE);
	FUNC1(FUNC0(klass), PROP_KEYFILE, param);

	param = FUNC2("group", 0, 0, G_PARAM_READABLE | G_PARAM_WRITABLE);
	FUNC1(FUNC0(klass), PROP_GROUP, param);

	param = FUNC2("key", 0, 0, G_PARAM_READABLE | G_PARAM_WRITABLE);
	FUNC1(FUNC0(klass), PROP_KEY, param);
}