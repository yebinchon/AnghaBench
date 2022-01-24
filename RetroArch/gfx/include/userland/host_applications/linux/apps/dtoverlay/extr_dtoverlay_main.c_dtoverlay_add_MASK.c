#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int num_strings; char** strings; } ;
typedef  TYPE_1__ STRING_VEC_T ;
typedef  TYPE_2__ STATE_T ;
typedef  int /*<<< orphan*/  DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ dry_run ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,char const*,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char const*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int,char const*,int*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC14 (int /*<<< orphan*/ *,char const*,char const*,int,char const*,TYPE_1__*) ; 
 int FUNC15 (char*,...) ; 
 char* error_file ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int overlay_src_dir ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 
 void* FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*,int*) ; 
 char* FUNC21 (char const*,char) ; 
 scalar_t__ FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int FUNC24 (char const*) ; 
 char* FUNC25 (char const*,char) ; 
 int work_dir ; 

__attribute__((used)) static int FUNC26(STATE_T *state, const char *overlay,
			 int argc, const char **argv)
{
    const char *overlay_name;
    const char *overlay_file;
    char *param_string = NULL;
    int is_dtparam;
    DTBLOB_T *base_dtb = NULL;
    DTBLOB_T *overlay_dtb;
    STRING_VEC_T used_props;
    int err;
    int len;
    int i;

    len = FUNC24(overlay) - 5;
    is_dtparam = (FUNC22(overlay, "dtparam") == 0);
    if (is_dtparam)
    {
        /* Convert /proc/device-tree to a .dtb and load it */
	overlay_file = FUNC19("%s/%s", work_dir, "base.dtb");
	if (FUNC18("dtc -I fs -O dtb -o '%s' /proc/device-tree 1>/dev/null 2>&1",
		    overlay_file) != 0)
           return FUNC15("Failed to read active DTB");
    }
    else if ((len > 0) && (FUNC22(overlay + len, ".dtbo") == 0))
    {
	const char *p;
	overlay_file = overlay;
	p = FUNC25(overlay, '/');
	if (p)
	{
	    overlay = p + 1;
	    len = FUNC24(overlay) - 5;
	}

	overlay = FUNC19("%.*s", len, overlay);
    }
    else
    {
	overlay_file = FUNC19("%s/%s.dtbo", overlay_src_dir, overlay);
    }

    if (dry_run)
        overlay_name = "dry_run";
    else
	overlay_name = FUNC19("%d_%s", state->count, overlay);
    overlay_dtb = FUNC11(overlay_file, FUNC0(4096));
    if (!overlay_dtb)
	return FUNC15("Failed to read '%s'", overlay_file);

    if (is_dtparam)
    {
        base_dtb = overlay_dtb;
	FUNC23(&used_props);
    }

    /* Apply any parameters next */
    for (i = 0; i < argc; i++)
    {
	const char *arg = argv[i];
	const char *param_val = FUNC21(arg, '=');
	const char *param, *override;
	char *p = NULL;
	int override_len;
	if (param_val)
	{
	    int len = (param_val - arg);
	    p = FUNC19("%.*s", len, arg);
	    param = p;
	    param_val++;
	}
	else
	{
	    /* Use the default parameter value - true */
	    param = arg;
	    param_val = "true";
	}

	override = FUNC7(overlay_dtb, param, &override_len);

	if (!override)
	    return FUNC15("Unknown parameter '%s'", param);

	if (is_dtparam)
	    err = FUNC14(overlay_dtb, param,
				override, override_len,
				param_val, &used_props);
	else
	    err = FUNC2(overlay_dtb, param,
					   override, override_len,
					   param_val);
	if (err != 0)
	    return FUNC15("Failed to set %s=%s", param, param_val);

	param_string = FUNC19("%s %s=%s",
				   param_string ? param_string : "",
				   param, param_val);

	FUNC16(p);
    }

    if (is_dtparam)
    {
        /* Build an overlay DTB */
        overlay_dtb = FUNC3(2048 + 256 * used_props.num_strings);

        for (i = 0; i < used_props.num_strings; i++)
        {
            int phandle, node_off, prop_len;
            const char *str, *prop_name;
            const void *prop_data;

            str = used_props.strings[i];
            FUNC20(str, "%8x", &phandle);
            prop_name = str + 8;
            node_off = FUNC8(base_dtb, phandle);

            prop_data = FUNC10(base_dtb, node_off,
                                               prop_name, &prop_len);
            err = FUNC4(overlay_dtb, i, phandle,
                                   prop_name, prop_data, prop_len);
        }

        FUNC9(base_dtb);
    }

    /* Prevent symbol clash by keeping them all private.
     * In future we could choose to expose some - perhaps using
     * a naming convention, or an "__exports__" node, at which
     * point it will no longer be necessary to explictly target
     * the /__symbols__ node with a fragment.
     */
    FUNC5(overlay_dtb, "/__symbols__", 0);

    if (param_string)
	FUNC6(overlay_dtb, param_string,
				  FUNC24(param_string) + 1);

    /* Create a filename with the sequence number */
    overlay_file = FUNC19("%s/%s.dtbo", work_dir, overlay_name);

    /* then write the overlay to the file */
    FUNC12(overlay_dtb);
    FUNC13(overlay_dtb, overlay_file);
    FUNC9(overlay_dtb);

    if (!dry_run && !FUNC1(overlay_file, overlay_name))
    {
	if (error_file)
	{
	    FUNC17(overlay_file, error_file);
	    FUNC16(error_file);
	}
	return 1;
    }

    return 0;
}