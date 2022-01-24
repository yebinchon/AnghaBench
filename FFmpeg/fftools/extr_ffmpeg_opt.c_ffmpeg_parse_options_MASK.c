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
typedef  int /*<<< orphan*/  octx ;
typedef  int /*<<< orphan*/  error ;
struct TYPE_5__ {int /*<<< orphan*/ * groups; int /*<<< orphan*/  global_opts; } ;
typedef  TYPE_1__ OptionParseContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t GROUP_INFILE ; 
 size_t GROUP_OUTFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  groups ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  open_input_file ; 
 int /*<<< orphan*/  open_output_file ; 
 int /*<<< orphan*/  options ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int FUNC11(int argc, char **argv)
{
    OptionParseContext octx;
    uint8_t error[128];
    int ret;

    FUNC5(&octx, 0, sizeof(octx));

    /* split the commandline into an internal representation */
    ret = FUNC8(&octx, argc, argv, options, groups,
                            FUNC0(groups));
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_FATAL, "Error splitting the argument list: ");
        goto fail;
    }

    /* apply global options */
    ret = FUNC7(NULL, &octx.global_opts);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_FATAL, "Error parsing global options: ");
        goto fail;
    }

    /* configure terminal and setup signal handlers */
    FUNC9();

    /* open input files */
    ret = FUNC6(&octx.groups[GROUP_INFILE], "input", open_input_file);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_FATAL, "Error opening input files: ");
        goto fail;
    }

    /* create the complex filtergraphs */
    ret = FUNC4();
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_FATAL, "Error initializing complex filters.\n");
        goto fail;
    }

    /* open output files */
    ret = FUNC6(&octx.groups[GROUP_OUTFILE], "output", open_output_file);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_FATAL, "Error opening output files: ");
        goto fail;
    }

    FUNC3();

fail:
    FUNC10(&octx);
    if (ret < 0) {
        FUNC2(ret, error, sizeof(error));
        FUNC1(NULL, AV_LOG_FATAL, "%s\n", error);
    }
    return ret;
}