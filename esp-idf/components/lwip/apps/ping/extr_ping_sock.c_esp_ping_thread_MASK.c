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
struct timeval {int dummy; } ;
struct TYPE_5__ {scalar_t__ seqno; int flags; scalar_t__ count; scalar_t__ sock; struct TYPE_5__* packet_hdr; int /*<<< orphan*/  cb_args; int /*<<< orphan*/  (* on_ping_end ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  interval_ms; int /*<<< orphan*/  (* on_ping_timeout ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* on_ping_success ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ elapsed_time_ms; scalar_t__ total_time_ms; scalar_t__ received; scalar_t__ transmitted; } ;
typedef  TYPE_1__ esp_ping_t ;
typedef  int /*<<< orphan*/  esp_ping_handle_t ;
typedef  int /*<<< orphan*/  TickType_t ;

/* Variables and functions */
 int /*<<< orphan*/  PING_CHECK_START_TIMEOUT_MS ; 
 int PING_FLAGS_INIT ; 
 int PING_FLAGS_START ; 
 scalar_t__ FUNC0 (struct timeval,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdTRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(void *args)
{
    esp_ping_t *ep = (esp_ping_t *)(args);
    TickType_t last_wake;
    struct timeval start_time, end_time;
    int recv_ret;

    while (1) {
        /* wait for ping start signal */
        if (FUNC10(pdTRUE, FUNC6(PING_CHECK_START_TIMEOUT_MS))) {
            /* initialize runtime statistics */
            ep->packet_hdr->seqno = 0;
            ep->transmitted = 0;
            ep->received = 0;
            ep->total_time_ms = 0;

            last_wake = FUNC13();
            while ((ep->flags & PING_FLAGS_START) && ((ep->count == 0) || (ep->packet_hdr->seqno < ep->count))) {
                FUNC3(ep);
                FUNC5(&start_time, NULL);
                recv_ret = FUNC2(ep);
                FUNC5(&end_time, NULL);
                ep->elapsed_time_ms = FUNC0(end_time, start_time);
                ep->total_time_ms += ep->elapsed_time_ms;
                if (recv_ret >= 0) {
                    if (ep->on_ping_success) {
                        ep->on_ping_success((esp_ping_handle_t)ep, ep->cb_args);
                    }
                } else {
                    if (ep->on_ping_timeout) {
                        ep->on_ping_timeout((esp_ping_handle_t)ep, ep->cb_args);
                    }
                }
                FUNC11(&last_wake, FUNC6(ep->interval_ms)); // to get a more accurate delay
            }
            /* batch of ping operations finished */
            if (ep->on_ping_end) {
                ep->on_ping_end((esp_ping_handle_t)ep, ep->cb_args);
            }
        } else {
            // check if ping has been de-initialized
            if (!(ep->flags & PING_FLAGS_INIT)) {
                break;
            }
        }
    }
    /* before exit task, free all resources */
    if (ep->packet_hdr) {
        FUNC4(ep->packet_hdr);
    }
    if (ep->sock > 0) {
        FUNC1(ep->sock);
    }
    FUNC4(ep);
    FUNC12(NULL);
}