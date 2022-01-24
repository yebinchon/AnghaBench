#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {int index; int preview_count; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_14__ {int /*<<< orphan*/ * path; int /*<<< orphan*/  list_title; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; } ;
struct TYPE_13__ {TYPE_6__ title_set; scalar_t__ scan_die; int /*<<< orphan*/  scan_thread; int /*<<< orphan*/  state_lock; TYPE_1__ state; } ;
typedef  TYPE_3__ hb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  HB_STATE_SCANDONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__*,char const*,int,TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 

void FUNC16( hb_handle_t * h, const char * path, int title_index,
              int preview_count, int store_previews, uint64_t min_duration )
{
    hb_title_t * title;

    // Check if scanning is necessary.
    if (h->title_set.path != NULL && !FUNC15(h->title_set.path, path))
    {
        // Current title_set path matches requested path.
        // Check if the requested title has already been scanned.
        int ii;
        for (ii = 0; ii < FUNC4(h->title_set.list_title); ii++)
        {
            title = FUNC5(h->title_set.list_title, ii);
            if (title->index == title_index)
            {
                // In some cases, we don't care what the preview count is.
                // E.g. when rescanning at the start of a job. In these
                // cases, the caller can set preview_count to -1 to tell
                // us to use the same count as the previous scan, if known.
                if (preview_count < 0)
                {
                    preview_count = title->preview_count;
                }
                if (preview_count == title->preview_count)
                {
                    // Title has already been scanned.
                    FUNC7( h->state_lock );
                    h->state.state = HB_STATE_SCANDONE;
                    FUNC13( h->state_lock );
                    return;
                }
            }
        }
    }
    if (preview_count < 0)
    {
        preview_count = 10;
    }

    h->scan_die = 0;

    /* Clean up from previous scan */
    FUNC10( h );
    while( ( title = FUNC5( h->title_set.list_title, 0 ) ) )
    {
        FUNC6( h->title_set.list_title, title );
        FUNC12( &title );
    }
    FUNC0((char*)h->title_set.path);
    h->title_set.path = NULL;

    /* Print CPU info here so that it's in all scan and encode logs */
    const char *cpu_name = FUNC2();
    const char *cpu_type = FUNC3();
    FUNC8("CPU: %s", cpu_name != NULL ? cpu_name : "");
    if (cpu_type != NULL)
    {
        FUNC8(" - %s", cpu_type);
    }
    FUNC8(" - logical processor count: %d", FUNC1());

#if HB_PROJECT_FEATURE_QSV
    if (!is_hardware_disabled())
    {
        /* Print QSV info here so that it's in all scan and encode logs */
        hb_qsv_info_print();
    }
#endif

    FUNC8( "hb_scan: path=%s, title_index=%d", path, title_index );
    h->scan_thread = FUNC11( h, &h->scan_die, path, title_index,
                                   &h->title_set, preview_count,
                                   store_previews, min_duration );
}