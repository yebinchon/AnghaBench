#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ param; } ;
typedef  TYPE_2__ xvid_plg_create_t ;
struct xvid_ff_pass1 {TYPE_1__* context; } ;
struct TYPE_4__ {char* twopassbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int XVID_ERR_FAIL ; 
 int /*<<< orphan*/  XVID_VERSION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(xvid_plg_create_t *param, void **handle)
{
    struct xvid_ff_pass1 *x = (struct xvid_ff_pass1 *) param->param;
    char *log = x->context->twopassbuffer;

    /* Do a quick bounds check */
    if (!log)
        return XVID_ERR_FAIL;

    /* We use snprintf() */
    /* This is because we can safely prevent a buffer overflow */
    log[0] = 0;
    FUNC5(log, FUNC1(log),
             "# ffmpeg 2-pass log file, using xvid codec\n");
    FUNC5(FUNC0(log), FUNC1(log),
             "# Do not modify. libxvidcore version: %d.%d.%d\n\n",
             FUNC2(XVID_VERSION),
             FUNC3(XVID_VERSION),
             FUNC4(XVID_VERSION));

    *handle = x->context;
    return 0;
}