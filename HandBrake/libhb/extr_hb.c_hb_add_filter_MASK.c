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
typedef  int /*<<< orphan*/  hb_job_t ;
typedef  int /*<<< orphan*/  hb_filter_object_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

void FUNC4( hb_job_t * job, hb_filter_object_t * filter,
                    const char * settings_in )
{
    hb_dict_t * settings = FUNC2(settings_in);
    if (settings_in != NULL && settings == NULL)
    {
        FUNC1("hb_add_filter: failed to parse filter settings!");
        return;
    }
    FUNC0(job, filter, settings);
    FUNC3(&settings);
}