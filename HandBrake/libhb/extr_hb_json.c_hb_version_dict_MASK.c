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
struct TYPE_3__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  HB_PROJECT_HOST_ARCH ; 
 int /*<<< orphan*/  HB_PROJECT_HOST_SYSTEMF ; 
 int /*<<< orphan*/  HB_PROJECT_NAME ; 
 int /*<<< orphan*/  HB_PROJECT_REPO_DATE ; 
 int /*<<< orphan*/  HB_PROJECT_REPO_HASH ; 
 int /*<<< orphan*/  HB_PROJECT_REPO_OFFICIAL ; 
 int /*<<< orphan*/  HB_PROJECT_REPO_TYPE ; 
 int /*<<< orphan*/  HB_PROJECT_VERSION ; 
 int /*<<< orphan*/  HB_PROJECT_VERSION_MAJOR ; 
 int /*<<< orphan*/  HB_PROJECT_VERSION_MINOR ; 
 int /*<<< orphan*/  HB_PROJECT_VERSION_POINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

hb_dict_t * FUNC5()
{
    hb_dict_t * dict;
    json_error_t error;

    dict = FUNC4(&error, 0,
        "{s:o, s:o, s:o, s{s:o, s:o, s:o}, s:o, s:o, s:o, s:o, s:o}",
        "Name",          FUNC3(HB_PROJECT_NAME),
        "Official",      FUNC1(HB_PROJECT_REPO_OFFICIAL),
        "Type",          FUNC3(HB_PROJECT_REPO_TYPE),
        "Version",
            "Major",     FUNC2(HB_PROJECT_VERSION_MAJOR),
            "Minor",     FUNC2(HB_PROJECT_VERSION_MINOR),
            "Point",     FUNC2(HB_PROJECT_VERSION_POINT),
        "VersionString", FUNC3(HB_PROJECT_VERSION),
        "RepoHash",      FUNC3(HB_PROJECT_REPO_HASH),
        "RepoDate",      FUNC3(HB_PROJECT_REPO_DATE),
        "System",        FUNC3(HB_PROJECT_HOST_SYSTEMF),
        "Arch",          FUNC3(HB_PROJECT_HOST_ARCH));
    if (dict == NULL)
    {
        FUNC0("json pack failure: %s", error.text);
        return NULL;
    }

    return dict;
}