#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  config_props; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ AVFilterPad ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_output ; 
 int FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, int nb_pads, int is_input, int is_audio)
{
    const char *padtype = is_input ? "in" : "out";
    int i = 0, ret = 0;

    for (i = 0; i < nb_pads; i++) {
        AVFilterPad pad = { 0 };

        pad.type = is_audio ? AVMEDIA_TYPE_AUDIO : AVMEDIA_TYPE_VIDEO;

        pad.name = FUNC1("%sput%d", padtype, i);
        if (!pad.name)
            return FUNC0(ENOMEM);

        FUNC3(ctx, AV_LOG_DEBUG, "Add %s pad %s\n", padtype, pad.name);

        if (is_input) {
            ret = FUNC4(ctx, i, &pad);
        } else {
            pad.config_props  = config_output;
            ret = FUNC5(ctx, i, &pad);
        }

        if (ret < 0) {
            FUNC2(&pad.name);
            return ret;
        }
    }

    return 0;
}