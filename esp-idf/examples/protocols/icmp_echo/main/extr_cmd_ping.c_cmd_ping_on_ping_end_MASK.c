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
typedef  float uint32_t ;
typedef  int /*<<< orphan*/  transmitted ;
typedef  int /*<<< orphan*/  total_time_ms ;
typedef  int /*<<< orphan*/  target_addr ;
typedef  int /*<<< orphan*/  received ;
typedef  float ip_addr_t ;
typedef  int /*<<< orphan*/  esp_ping_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_PING_PROF_DURATION ; 
 int /*<<< orphan*/  ESP_PING_PROF_IPADDR ; 
 int /*<<< orphan*/  ESP_PING_PROF_REPLY ; 
 int /*<<< orphan*/  ESP_PING_PROF_REQUEST ; 
 scalar_t__ FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (float*) ; 
 int /*<<< orphan*/ * FUNC6 (float*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void FUNC8(esp_ping_handle_t hdl, void *args)
{
    ip_addr_t target_addr;
    uint32_t transmitted;
    uint32_t received;
    uint32_t total_time_ms;
    FUNC2(hdl, ESP_PING_PROF_REQUEST, &transmitted, sizeof(transmitted));
    FUNC2(hdl, ESP_PING_PROF_REPLY, &received, sizeof(received));
    FUNC2(hdl, ESP_PING_PROF_IPADDR, &target_addr, sizeof(target_addr));
    FUNC2(hdl, ESP_PING_PROF_DURATION, &total_time_ms, sizeof(total_time_ms));
    uint32_t loss = (uint32_t)((1 - ((float)received) / transmitted) * 100);
    if (FUNC0(&target_addr)) {
        FUNC7("\n--- %s ping statistics ---\n", FUNC4(*FUNC5(&target_addr)));
    } else {
        FUNC7("\n--- %s ping statistics ---\n", FUNC3(*FUNC6(&target_addr)));
    }
    FUNC7("%d packets transmitted, %d received, %d%% packet loss, time %dms\n",
           transmitted, received, loss, total_time_ms);
    // delete the ping sessions, so that we clean up all resources and can create a new ping session
    // we don't have to call delete function in the callback, instead we can call delete function from other tasks
    FUNC1(hdl);
}