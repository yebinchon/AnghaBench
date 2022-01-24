#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_5__ {void* pkt_len; scalar_t__ length; } ;
typedef  TYPE_1__ buf_desc_t ;
struct TYPE_6__ {int /*<<< orphan*/  sendbuf; TYPE_1__* in_flight; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ STATE_IDLE ; 
 TYPE_2__ context ; 
 int /*<<< orphan*/  qe ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC6(void)
{
    FUNC0(FUNC4() == STATE_IDLE,
        "reset counter when transmission started", ESP_ERR_INVALID_STATE);

    FUNC5(0);

    uint32_t last_cnt=0;
    buf_desc_t *desc = context.in_flight;
    buf_desc_t *last = NULL;
    while(desc != NULL) {
        last_cnt += desc->length;
        desc->pkt_len = last_cnt;
        last = desc;
        desc = FUNC1(desc, qe);
    }
    // in theory the desc should be the one right next to the last of in_flight,
    // but the link of last is NULL, so get the desc from the ringbuf directly.
    desc = (buf_desc_t*)FUNC2(&context.sendbuf);
    while(desc != NULL) {
        last_cnt += desc->length;
        desc->pkt_len = last_cnt;
        last = desc;
        desc = FUNC1(desc, qe);
    }
    if (last == NULL) {
        last = (buf_desc_t*)FUNC3(&context.sendbuf);
        last->pkt_len = 0;
    }

    return ESP_OK;
}