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
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  hb_job_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 

hb_dict_t* FUNC10(hb_handle_t *h, int title_index,
                              const hb_dict_t *preset)
{
    hb_title_t *title = FUNC1(h, title_index);
    if (title == NULL)
    {
        FUNC0("Invalid title index (%d)", title_index);
        return NULL;
    }

    hb_job_t *job = FUNC3(title);
    hb_dict_t *job_dict = FUNC4(job);
    FUNC2(&job);

    if (FUNC6(preset, job_dict) < 0)
        goto fail;

    if (FUNC8(preset, job_dict) < 0)
        goto fail;

    if (FUNC5(preset, job_dict) < 0)
        goto fail;

    if (FUNC7(h, title_index, preset, job_dict) < 0)
        goto fail;

    return job_dict;

fail:
    FUNC9(&job_dict);
    return NULL;
}