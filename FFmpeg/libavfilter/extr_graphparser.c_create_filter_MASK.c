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
typedef  int /*<<< orphan*/  name2 ;
struct TYPE_4__ {char* scale_sws_opts; } ;
typedef  TYPE_1__ AVFilterGraph ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 

__attribute__((used)) static int FUNC12(AVFilterContext **filt_ctx, AVFilterGraph *ctx, int index,
                         const char *name, const char *args, void *log_ctx)
{
    const AVFilter *filt;
    char name2[30];
    const char *inst_name = NULL, *filt_name = NULL;
    char *tmp_args = NULL;
    int ret, k;

    FUNC4(name2, name, sizeof(name2));

    for (k = 0; name2[k]; k++) {
        if (name2[k] == '@' && name[k+1]) {
            name2[k] = 0;
            inst_name = name;
            filt_name = name2;
            break;
        }
    }

    if (!inst_name) {
        FUNC9(name2, sizeof(name2), "Parsed_%s_%d", name, index);
        inst_name = name2;
        filt_name = name;
    }

    filt = FUNC6(filt_name);

    if (!filt) {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "No such filter: '%s'\n", filt_name);
        return FUNC0(EINVAL);
    }

    *filt_ctx = FUNC7(ctx, filt, inst_name);
    if (!*filt_ctx) {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "Error creating filter '%s'\n", filt_name);
        return FUNC0(ENOMEM);
    }

    if (!FUNC10(filt_name, "scale") && (!args || !FUNC11(args, "flags")) &&
        ctx->scale_sws_opts) {
        if (args) {
            tmp_args = FUNC1("%s:%s",
                    args, ctx->scale_sws_opts);
            if (!tmp_args)
                return FUNC0(ENOMEM);
            args = tmp_args;
        } else
            args = ctx->scale_sws_opts;
    }

    ret = FUNC8(*filt_ctx, args);
    if (ret < 0) {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "Error initializing filter '%s'", filt_name);
        if (args)
            FUNC3(log_ctx, AV_LOG_ERROR, " with args '%s'", args);
        FUNC3(log_ctx, AV_LOG_ERROR, "\n");
        FUNC5(*filt_ctx);
        *filt_ctx = NULL;
    }

    FUNC2(tmp_args);
    return ret;
}