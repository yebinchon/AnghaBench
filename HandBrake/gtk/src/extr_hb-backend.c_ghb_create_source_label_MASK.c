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
struct TYPE_3__ {scalar_t__* name; scalar_t__ type; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  char gchar ;

/* Variables and functions */
 scalar_t__ HB_BD_TYPE ; 
 scalar_t__ HB_DVD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__*) ; 

gchar*
FUNC6(const hb_title_t * title)
{
    char * volname;
    char * source;

    if (title != NULL && title->name != NULL && title->name[0] != 0)
    {
        volname = FUNC5(title->name);
        if (title->type == HB_DVD_TYPE)
        {
            FUNC4(volname);
        }
        if (title->type == HB_BD_TYPE)
        {
            source = FUNC3(FUNC0("%s - (%05d.MPLS)"),
                                     volname, title->playlist);
            FUNC1(volname);
        }
        else
        {
            source = volname;
        }
    }
    else
    {
        source = FUNC2(FUNC0("No Title Found"));
    }
    return source;
}