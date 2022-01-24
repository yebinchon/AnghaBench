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
 int HB_AUDIO_ATTR_ALT_COMMENTARY ; 
 int HB_AUDIO_ATTR_COMMENTARY ; 
 int HB_AUDIO_ATTR_DEFAULT ; 
 int HB_AUDIO_ATTR_NORMAL ; 
 int HB_AUDIO_ATTR_SECONDARY ; 
 int HB_AUDIO_ATTR_VISUALLY_IMPAIRED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

hb_dict_t * FUNC3(uint32_t attributes)
{
    json_error_t error;
    hb_dict_t * dict;

    dict = FUNC2(&error, 0,
        "{s:o, s:o, s:o, s:o, s:o, s:o}",
        "Normal",           FUNC1(attributes & HB_AUDIO_ATTR_NORMAL),
        "VisuallyImpaired", FUNC1(attributes &
                                          HB_AUDIO_ATTR_VISUALLY_IMPAIRED),
        "Commentary",       FUNC1(attributes &
                                          HB_AUDIO_ATTR_COMMENTARY),
        "AltCommentary",    FUNC1(attributes &
                                          HB_AUDIO_ATTR_ALT_COMMENTARY),
        "Secondary",        FUNC1(attributes & HB_AUDIO_ATTR_SECONDARY),
        "Default",          FUNC1(attributes & HB_AUDIO_ATTR_DEFAULT));
    if (dict == NULL)
    {
        FUNC0("json pack failure: %s", error.text);
    }
    return dict;
}