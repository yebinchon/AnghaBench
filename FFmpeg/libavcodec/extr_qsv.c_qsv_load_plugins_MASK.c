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
typedef  scalar_t__ mfxStatus ;
typedef  int /*<<< orphan*/  mfxSession ;
struct TYPE_3__ {scalar_t__ Data; } ;
typedef  TYPE_1__ mfxPluginUID ;
typedef  int /*<<< orphan*/  errorbuf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (void*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int FUNC7 (char*,char*,scalar_t__) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(mfxSession session, const char *load_plugins,
                            void *logctx)
{
    if (!load_plugins || !*load_plugins)
        return 0;

    while (*load_plugins) {
        mfxPluginUID uid;
        mfxStatus ret;
        int i, err = 0;

        char *plugin = FUNC3(&load_plugins, ":");
        if (!plugin)
            return FUNC0(ENOMEM);
        if (FUNC8(plugin) != 2 * sizeof(uid.Data)) {
            FUNC4(logctx, AV_LOG_ERROR, "Invalid plugin UID length\n");
            err = FUNC0(EINVAL);
            goto load_plugin_fail;
        }

        for (i = 0; i < sizeof(uid.Data); i++) {
            err = FUNC7(plugin + 2 * i, "%2hhx", uid.Data + i);
            if (err != 1) {
                FUNC4(logctx, AV_LOG_ERROR, "Invalid plugin UID\n");
                err = FUNC0(EINVAL);
                goto load_plugin_fail;
            }

        }

        ret = FUNC1(session, &uid, 1);
        if (ret < 0) {
            char errorbuf[128];
            FUNC6(errorbuf, sizeof(errorbuf),
                     "Could not load the requested plugin '%s'", plugin);
            err = FUNC5(logctx, ret, errorbuf);
            goto load_plugin_fail;
        }

        if (*load_plugins)
            load_plugins++;
load_plugin_fail:
        FUNC2(&plugin);
        if (err < 0)
            return err;
    }

    return 0;

}