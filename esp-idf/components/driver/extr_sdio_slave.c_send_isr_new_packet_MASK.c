#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  pkt_len; } ;
typedef  TYPE_1__ buf_desc_t ;
struct TYPE_7__ {TYPE_1__* in_flight_end; TYPE_1__* in_flight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__* const,TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  STATE_SENDING ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__ context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline esp_err_t FUNC6(void)
{
    // since eof is changed, we have to stop and reset the link list,
    // and restart new link list operation
    buf_desc_t *const start_desc = context.in_flight;
    buf_desc_t *const end_desc = context.in_flight_end;
    FUNC1(start_desc != NULL && end_desc != NULL);

    FUNC5();
    FUNC4(start_desc);

    // update pkt_len register to allow host reading.
    FUNC2(end_desc->pkt_len);

    FUNC3(STATE_SENDING);

    FUNC0(TAG, "restart new send: %p->%p, pkt_len: %d", start_desc, end_desc, end_desc->pkt_len);
    return ESP_OK;
}