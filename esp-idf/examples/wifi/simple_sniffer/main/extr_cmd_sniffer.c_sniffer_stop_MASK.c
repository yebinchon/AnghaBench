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
struct TYPE_5__ {int is_running; int interf; int /*<<< orphan*/  pcap; int /*<<< orphan*/ * work_queue; int /*<<< orphan*/ * sem_task_over; } ;
typedef  TYPE_1__ sniffer_runtime_t ;
struct TYPE_6__ {int /*<<< orphan*/  payload; } ;
typedef  TYPE_2__ sniffer_packet_info_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  UBaseType_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
#define  SNIFFER_INTF_WLAN 128 
 int /*<<< orphan*/  SNIFFER_PROCESS_PACKET_TIMEOUT_MS ; 
 int /*<<< orphan*/  SNIFFER_TAG ; 
 int /*<<< orphan*/  err ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC11(sniffer_runtime_t *sniffer)
{
    FUNC1(sniffer->is_running, "sniffer is already stopped", err);

    switch (sniffer->interf) {
    case SNIFFER_INTF_WLAN:
        /* Disable wifi promiscuous mode */
        FUNC1(FUNC2(false) == ESP_OK, "stop wifi promiscuous failed", err);
        break;
    default:
        FUNC1(false, "unsupported interface", err);
        break;
    }
    FUNC0(SNIFFER_TAG, "stop WiFi promiscuous ok");

    /* stop sniffer local task */
    sniffer->is_running = false;
    /* wait for task over */
    FUNC10(sniffer->sem_task_over, portMAX_DELAY);
    FUNC8(sniffer->sem_task_over);
    sniffer->sem_task_over = NULL;
    /* make sure to free all resources in the left items */
    UBaseType_t left_items = FUNC6(sniffer->work_queue);
    sniffer_packet_info_t packet_info;
    while (left_items--) {
        FUNC9(sniffer->work_queue, &packet_info, FUNC5(SNIFFER_PROCESS_PACKET_TIMEOUT_MS));
        FUNC3(packet_info.payload);
    }
    FUNC7(sniffer->work_queue);
    sniffer->work_queue = NULL;
    /* stop pcap session */
    FUNC1(FUNC4(sniffer->pcap) == ESP_OK, "stop pcap session failed", err);
    return ESP_OK;
err:
    return ESP_FAIL;
}