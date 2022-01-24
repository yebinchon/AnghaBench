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
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

hb_job_t* FUNC3( hb_handle_t * h, const char * json_job )
{
    hb_dict_t *dict = FUNC2(json_job);
    hb_job_t *job = FUNC0(h, dict);
    FUNC1(&dict);
    return job;
}