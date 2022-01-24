#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {char* gain_cmd; char* gain_entry_cmd; } ;
typedef  TYPE_1__ FIREqualizerContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 char* FUNC1 (TYPE_1__*) ; 
 char const* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    FIREqualizerContext *s = ctx->priv;
    int ret = FUNC0(ENOSYS);

    if (!FUNC7(cmd, "gain")) {
        char *gain_cmd;

        if (FUNC1(s) && !FUNC7(FUNC1(s), args)) {
            FUNC4(ctx, AV_LOG_DEBUG, "equal gain, do not rebuild.\n");
            return 0;
        }

        gain_cmd = FUNC5(args);
        if (!gain_cmd)
            return FUNC0(ENOMEM);

        ret = FUNC6(ctx, gain_cmd, FUNC2(s));
        if (ret >= 0) {
            FUNC3(&s->gain_cmd);
            s->gain_cmd = gain_cmd;
        } else {
            FUNC3(&gain_cmd);
        }
    } else if (!FUNC7(cmd, "gain_entry")) {
        char *gain_entry_cmd;

        if (FUNC2(s) && !FUNC7(FUNC2(s), args)) {
            FUNC4(ctx, AV_LOG_DEBUG, "equal gain_entry, do not rebuild.\n");
            return 0;
        }

        gain_entry_cmd = FUNC5(args);
        if (!gain_entry_cmd)
            return FUNC0(ENOMEM);

        ret = FUNC6(ctx, FUNC1(s), gain_entry_cmd);
        if (ret >= 0) {
            FUNC3(&s->gain_entry_cmd);
            s->gain_entry_cmd = gain_entry_cmd;
        } else {
            FUNC3(&gain_entry_cmd);
        }
    }

    return ret;
}