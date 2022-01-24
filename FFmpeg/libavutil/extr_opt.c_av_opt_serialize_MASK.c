#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ type; int flags; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_ESCAPE_MODE_BACKSLASH ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_OPT_SERIALIZE_OPT_FLAGS_EXACT ; 
 int AV_OPT_SERIALIZE_SKIP_DEFAULTS ; 
 scalar_t__ AV_OPT_TYPE_CONST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (void*,TYPE_1__ const*) ; 
 TYPE_1__* FUNC9 (void*,TYPE_1__ const*) ; 

int FUNC10(void *obj, int opt_flags, int flags, char **buffer,
                     const char key_val_sep, const char pairs_sep)
{
    const AVOption *o = NULL;
    uint8_t *buf;
    AVBPrint bprint;
    int ret, cnt = 0;
    const char special_chars[] = {pairs_sep, key_val_sep, '\0'};

    if (pairs_sep == '\0' || key_val_sep == '\0' || pairs_sep == key_val_sep ||
        pairs_sep == '\\' || key_val_sep == '\\') {
        FUNC6(obj, AV_LOG_ERROR, "Invalid separator(s) found.");
        return FUNC0(EINVAL);
    }

    if (!obj || !buffer)
        return FUNC0(EINVAL);

    *buffer = NULL;
    FUNC4(&bprint, 64, AV_BPRINT_SIZE_UNLIMITED);

    while ((o = FUNC9(obj, o))) {
        if (o->type == AV_OPT_TYPE_CONST)
            continue;
        if ((flags & AV_OPT_SERIALIZE_OPT_FLAGS_EXACT) && o->flags != opt_flags)
            continue;
        else if (((o->flags & opt_flags) != opt_flags))
            continue;
        if (flags & AV_OPT_SERIALIZE_SKIP_DEFAULTS && FUNC8(obj, o) > 0)
            continue;
        if ((ret = FUNC7(obj, o->name, 0, &buf)) < 0) {
            FUNC3(&bprint, NULL);
            return ret;
        }
        if (buf) {
            if (cnt++)
                FUNC1(&bprint, &pairs_sep, 1);
            FUNC2(&bprint, o->name, special_chars, AV_ESCAPE_MODE_BACKSLASH, 0);
            FUNC1(&bprint, &key_val_sep, 1);
            FUNC2(&bprint, buf, special_chars, AV_ESCAPE_MODE_BACKSLASH, 0);
            FUNC5(&buf);
        }
    }
    FUNC3(&bprint, buffer);
    return 0;
}