#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nb_streams; TYPE_1__* priv_data; } ;
struct TYPE_9__ {scalar_t__ initial_timeout; int rtsp_flags; scalar_t__ initial_pause; int /*<<< orphan*/ * real_setup_cache; int /*<<< orphan*/ * real_setup; } ;
typedef  TYPE_1__ RTSPState ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int RTSP_FLAG_LISTEN ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    int ret;

    if (rt->initial_timeout > 0)
        rt->rtsp_flags |= RTSP_FLAG_LISTEN;

    if (rt->rtsp_flags & RTSP_FLAG_LISTEN) {
        ret = FUNC5(s);
        if (ret)
            return ret;
    } else {
        ret = FUNC4(s);
        if (ret)
            return ret;

        rt->real_setup_cache = !s->nb_streams ? NULL :
            FUNC1(s->nb_streams, 2 * sizeof(*rt->real_setup_cache));
        if (!rt->real_setup_cache && s->nb_streams)
            return FUNC0(ENOMEM);
        rt->real_setup = rt->real_setup_cache + s->nb_streams;

        if (rt->initial_pause) {
            /* do not start immediately */
        } else {
            if ((ret = FUNC6(s)) < 0) {
                FUNC3(s);
                FUNC2(s);
                return ret;
            }
        }
    }

    return 0;
}