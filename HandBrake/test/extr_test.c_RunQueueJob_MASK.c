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
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int job_running ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(hb_handle_t *h, hb_dict_t *job_dict)
{
    if (job_dict == NULL)
    {
        return -1;
    }

    char * json_job;
    json_job = FUNC6(job_dict);
    FUNC5(&job_dict);
    if (json_job == NULL)
    {
        FUNC1(stderr, "Error in setting up job! Aborting.\n");
        return -1;
    }

    FUNC3(h, json_job);
    FUNC2(json_job);
    job_running = 1;
    FUNC4( h );

    FUNC0(h, NULL);

    return 0;
}