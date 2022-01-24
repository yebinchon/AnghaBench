#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef  TYPE_2__ hb_state_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_STATE_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (char const**) ; 

void FUNC9( hb_handle_t * h, const char * json_job )
{
    hb_dict_t * dict;
    int result;
    json_error_t error;

    dict = FUNC5(json_job);

    int title_index;
    const char *path = NULL;

    result = FUNC6(dict, &error, 0, "{s:{s:s, s:i}}",
                            "Source",
                                "Path",     FUNC8(&path),
                                "Title",    FUNC7(&title_index)
                           );
    if (result < 0)
    {
        FUNC0("json unpack failure, failed to find title: %s", error.text);
        FUNC4(&dict);
        return;
    }

    // If the job wants to use Hardware decode, it must also be
    // enabled during scan.  So enable it here.
    FUNC2(h, path, title_index, -1, 0, 0);

    // Wait for scan to complete
    hb_state_t state;
    FUNC1(h, &state);
    while (state.state == HB_STATE_SCANNING)
    {
        FUNC3(50);
        FUNC1(h, &state);
    }
    FUNC4(&dict);
}