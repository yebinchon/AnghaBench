#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  transmitted ;
typedef  int /*<<< orphan*/  total_time_ms ;
typedef  int /*<<< orphan*/  received ;
typedef  int /*<<< orphan*/  esp_ping_handle_t ;
typedef  int /*<<< orphan*/  EventGroupHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_PING_PROF_DURATION ; 
 int /*<<< orphan*/  ESP_PING_PROF_REPLY ; 
 int /*<<< orphan*/  ESP_PING_PROF_REQUEST ; 
 int /*<<< orphan*/  ETH_PING_END_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(esp_ping_handle_t hdl, void *args)
{
    EventGroupHandle_t eth_event_group = (EventGroupHandle_t)args;
    uint32_t transmitted;
    uint32_t received;
    uint32_t total_time_ms;

    FUNC0(hdl, ESP_PING_PROF_REQUEST, &transmitted, sizeof(transmitted));
    FUNC0(hdl, ESP_PING_PROF_REPLY, &received, sizeof(received));
    FUNC0(hdl, ESP_PING_PROF_DURATION, &total_time_ms, sizeof(total_time_ms));
    FUNC1("%d packets transmitted, %d received, time %dms\n", transmitted, received, total_time_ms);
    if (transmitted == received) {
        FUNC2(eth_event_group, ETH_PING_END_BIT);
    }
}