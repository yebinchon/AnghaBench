#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pa_mainloop_api ;
typedef  int /*<<< orphan*/  pa_mainloop ;
typedef  int /*<<< orphan*/  pa_context ;
typedef  enum PulseAudioContextState { ____Placeholder_PulseAudioContextState } PulseAudioContextState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PULSE_CONTEXT_FINISHED ; 
 int PULSE_CONTEXT_INITIALIZING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  pa_state_cb ; 

int FUNC9(pa_mainloop **pa_ml, pa_context **pa_ctx,
                                   const char *server, const char *description)
{
    int ret;
    pa_mainloop_api *pa_mlapi = NULL;
    enum PulseAudioContextState context_state = PULSE_CONTEXT_INITIALIZING;

    FUNC1(pa_ml);
    FUNC1(pa_ctx);

    *pa_ml = NULL;
    *pa_ctx = NULL;

    if (!(*pa_ml = FUNC8()))
        return FUNC0(ENOMEM);
    if (!(pa_mlapi = FUNC6(*pa_ml))) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }
    if (!(*pa_ctx = FUNC4(pa_mlapi, description))) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    FUNC5(*pa_ctx, pa_state_cb, &context_state);
    if (FUNC3(*pa_ctx, server, 0, NULL) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    while (context_state == PULSE_CONTEXT_INITIALIZING)
        FUNC7(*pa_ml, 1, NULL);
    if (context_state == PULSE_CONTEXT_FINISHED) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }
    return 0;

  fail:
    FUNC2(pa_ml, pa_ctx);
    return ret;
}