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
struct TYPE_5__ {scalar_t__* name; scalar_t__ type; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  char gchar ;
struct TYPE_6__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_2__ GStatBuf ;

/* Variables and functions */
 scalar_t__ HB_DVD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (scalar_t__*) ; 
 scalar_t__ FUNC8 (char*) ; 

gchar*
FUNC9(const hb_title_t * title)
{
    char * volname = NULL;

    if (title != NULL && title->name != NULL && title->name[0] != 0)
    {
        GStatBuf stat_buf;

        if (FUNC3(title->path, &stat_buf) == 0)
        {
            if (!FUNC0(stat_buf.st_mode))
            {
                volname = FUNC5(title->path);
            }
            else
            {
                // DVD and BD volume labels are often all upper case
                volname = FUNC7(title->name);
                if (title->type == HB_DVD_TYPE)
                {
                    FUNC6(volname);
                }
                if (FUNC8(volname))
                {
                    FUNC2(volname);
                }
            }
        }
        if (volname == NULL)
        {
            volname = FUNC7(title->name);
            if (title->type == HB_DVD_TYPE)
            {
                FUNC6(volname);
            }
        }
    }
    else
    {
        volname = FUNC4(FUNC1("No Title Found"));
    }
    return volname;
}