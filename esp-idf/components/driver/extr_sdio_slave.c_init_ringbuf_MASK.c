#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  buf_desc_t ;
struct TYPE_3__ {int send_queue_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  sendbuf; TYPE_1__ config; } ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  RINGBUF_GET_ALL ; 
 int /*<<< orphan*/  RINGBUF_GET_ONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ context ; 
 int /*<<< orphan*/ * link_desc_to_last ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC5(void)
{
    esp_err_t ret = FUNC1(&context.sendbuf, sizeof(buf_desc_t), context.config.send_queue_size);
    if (ret != ESP_OK) return ret;

    esp_err_t rcv_res;
    buf_desc_t *first=NULL, *last=NULL;

    //no copy for the first descriptor
    ret = FUNC4(&context.sendbuf, NULL, NULL, portMAX_DELAY);
    if (ret != ESP_OK) return ret;

    //loop in the ringbuf to link all the desc one after another as a ring
    for (int i = 0; i < context.config.send_queue_size+1; i++) {
        rcv_res = FUNC2(&context.sendbuf, (uint8_t**)&last, NULL, RINGBUF_GET_ONE, 0);
        FUNC0 (rcv_res == ESP_OK);
        ret = FUNC4(&context.sendbuf, link_desc_to_last, last, portMAX_DELAY);
        if (ret != ESP_OK) return ret;
        FUNC3(&context.sendbuf, (uint8_t*)last);
    }
    first = NULL;
    last = NULL;
    //clear the queue
    rcv_res = FUNC2(&context.sendbuf, (uint8_t**)&first, (uint8_t**)&last, RINGBUF_GET_ALL, 0);
    FUNC0 (rcv_res == ESP_OK);
    FUNC0(first == last); //there should be only one desc remain
    FUNC3(&context.sendbuf, (uint8_t*)first);
    return ESP_OK;
}