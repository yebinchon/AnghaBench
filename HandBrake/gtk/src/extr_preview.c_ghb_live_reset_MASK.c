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
struct TYPE_7__ {TYPE_1__* preview; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  scalar_t__ gboolean ;
struct TYPE_6__ {int live_id; int encode_frame; size_t frame; scalar_t__* encoded; int /*<<< orphan*/ * current; int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 int GHB_PREVIEW_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(signal_user_data_t *ud)
{
    gboolean encoded;

    if (ud->preview->live_id >= 0)
    {
        FUNC2();
    }
    ud->preview->live_id = -1;
    ud->preview->encode_frame = -1;
    if (!ud->preview->pause)
        FUNC3(ud);
    if (ud->preview->current)
    {
        FUNC0(ud->preview->current);
        ud->preview->current = NULL;
    }
    encoded = ud->preview->encoded[ud->preview->frame];
    FUNC4(ud->preview->encoded, 0, sizeof(gboolean) * GHB_PREVIEW_MAX);
    if (encoded)
        FUNC1(ud);
}