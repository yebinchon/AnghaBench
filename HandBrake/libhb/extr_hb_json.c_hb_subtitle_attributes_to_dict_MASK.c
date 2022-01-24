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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int HB_SUBTITLE_ATTR_4_3 ; 
 int HB_SUBTITLE_ATTR_CC ; 
 int HB_SUBTITLE_ATTR_CHILDREN ; 
 int HB_SUBTITLE_ATTR_COMMENTARY ; 
 int HB_SUBTITLE_ATTR_DEFAULT ; 
 int HB_SUBTITLE_ATTR_FORCED ; 
 int HB_SUBTITLE_ATTR_LARGE ; 
 int HB_SUBTITLE_ATTR_LETTERBOX ; 
 int HB_SUBTITLE_ATTR_NORMAL ; 
 int HB_SUBTITLE_ATTR_PANSCAN ; 
 int HB_SUBTITLE_ATTR_WIDE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

hb_dict_t * FUNC3(uint32_t attributes)
{
    json_error_t error;
    hb_dict_t * dict;

    dict = FUNC2(&error, 0,
        "{s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o}",
        "Normal",        FUNC1(attributes & HB_SUBTITLE_ATTR_NORMAL),
        "Large",         FUNC1(attributes & HB_SUBTITLE_ATTR_LARGE),
        "Children",      FUNC1(attributes & HB_SUBTITLE_ATTR_CHILDREN),
        "ClosedCaption", FUNC1(attributes & HB_SUBTITLE_ATTR_CC),
        "Forced",        FUNC1(attributes & HB_SUBTITLE_ATTR_FORCED),
        "Commentary",    FUNC1(attributes &
                                       HB_SUBTITLE_ATTR_COMMENTARY),
        "4By3",          FUNC1(attributes & HB_SUBTITLE_ATTR_4_3),
        "Wide",          FUNC1(attributes & HB_SUBTITLE_ATTR_WIDE),
        "Letterbox",     FUNC1(attributes & HB_SUBTITLE_ATTR_LETTERBOX),
        "PanScan",       FUNC1(attributes & HB_SUBTITLE_ATTR_PANSCAN),
        "Default",       FUNC1(attributes & HB_SUBTITLE_ATTR_DEFAULT));
    if (dict == NULL)
    {
        FUNC0("json pack failure: %s", error.text);
    }
    return dict;
}