#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sdio_slave_buf_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  buf_desc_t ;
struct TYPE_2__ {int /*<<< orphan*/  recv_reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ context ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  te ; 

esp_err_t FUNC5(sdio_slave_buf_handle_t handle)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    FUNC0(desc); //in the queue, fail.

    FUNC2();
    FUNC1(&context.recv_reg_list, desc, te);
    FUNC3();
    FUNC4(desc);
    return ESP_OK;
}