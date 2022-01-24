#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_25__ {int live; double stream_id; double duration; scalar_t__ is_input; scalar_t__ playpath; scalar_t__ subscribe; } ;
typedef  int /*<<< orphan*/  RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,char**) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static int FUNC14(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    char *tracked_method = NULL;
    int ret = 0;

    if ((ret = FUNC2(s, pkt, 10, &tracked_method)) < 0)
        return ret;

    if (!tracked_method) {
        /* Ignore this reply when the current method is not tracked. */
        return ret;
    }

    if (!FUNC13(tracked_method, "connect")) {
        if (!rt->is_input) {
            if ((ret = FUNC10(s, rt)) < 0)
                goto fail;

            if ((ret = FUNC5(s, rt)) < 0)
                goto fail;
        } else {
            if ((ret = FUNC11(s, rt)) < 0)
                goto fail;
        }

        if ((ret = FUNC4(s, rt)) < 0)
            goto fail;

        if (rt->is_input) {
            /* Send the FCSubscribe command when the name of live
             * stream is defined by the user or if it's a live stream. */
            if (rt->subscribe) {
                if ((ret = FUNC6(s, rt, rt->subscribe)) < 0)
                    goto fail;
            } else if (rt->live == -1) {
                if ((ret = FUNC6(s, rt, rt->playpath)) < 0)
                    goto fail;
            }
        }
    } else if (!FUNC13(tracked_method, "createStream")) {
        double stream_id;
        if (FUNC12(pkt, &stream_id)) {
            FUNC1(s, AV_LOG_WARNING, "Unexpected reply on connect()\n");
        } else {
            rt->stream_id = stream_id;
        }

        if (!rt->is_input) {
            if ((ret = FUNC9(s, rt)) < 0)
                goto fail;
        } else {
            if (rt->live != -1) {
                if ((ret = FUNC7(s, rt)) < 0)
                    goto fail;
            }
            if ((ret = FUNC8(s, rt)) < 0)
                goto fail;
            if ((ret = FUNC3(s, rt)) < 0)
                goto fail;
        }
    } else if (!FUNC13(tracked_method, "getStreamLength")) {
        if (FUNC12(pkt, &rt->duration)) {
            FUNC1(s, AV_LOG_WARNING, "Unexpected reply on getStreamLength()\n");
        }
    }

fail:
    FUNC0(tracked_method);
    return ret;
}