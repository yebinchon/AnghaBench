#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ sdio_slave_buf_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  buf_stailq_t ;
struct TYPE_10__ {int owner; scalar_t__ not_receiving; } ;
typedef  TYPE_2__ buf_desc_t ;
struct TYPE_9__ {int start; int restart; scalar_t__ addr; } ;
struct TYPE_12__ {TYPE_1__ slc0_tx_link; } ;
struct TYPE_11__ {TYPE_2__* recv_cur_ret; int /*<<< orphan*/  recv_reg_list; int /*<<< orphan*/  recv_link_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_7__ SLC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  buf_desc_s ; 
 TYPE_3__ context ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  qe ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  te ; 

esp_err_t FUNC9(sdio_slave_buf_handle_t handle)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    FUNC0(desc);

    buf_stailq_t *const queue = &context.recv_link_list;

    FUNC6();
    FUNC5(desc->not_receiving);
    FUNC4(&context.recv_reg_list, desc, te);
    desc->owner = 1;
    desc->not_receiving = 0; //manually remove the prev link (by set not_receiving=0), to indicate this is in the queue

    buf_desc_t *const tail = FUNC3(queue, buf_desc_s, qe);

    FUNC2(queue, desc, qe);
    if (context.recv_cur_ret == NULL) {
        context.recv_cur_ret = desc;
    }

    if (tail == NULL) {
        //no one in the ll, start new ll operation.
        SLC.slc0_tx_link.addr = (uint32_t)desc;
        SLC.slc0_tx_link.start = 1;
        FUNC1(TAG, "recv_load_buf: start new");
    } else {
        //restart former ll operation
        SLC.slc0_tx_link.restart = 1;
        FUNC1(TAG, "recv_load_buf: restart");
    }
    FUNC7();
    FUNC8();

    return ESP_OK;
}