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
typedef  int /*<<< orphan*/  ws_transport_opcodes_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/ * esp_transport_handle_t ;

/* Variables and functions */
 int ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int WS_FIN ; 
 int /*<<< orphan*/  WS_MASK ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(esp_transport_handle_t t, ws_transport_opcodes_t opcode, const char *b, int len, int timeout_ms)
{
    uint8_t op_code = FUNC3(opcode);
    if (t == NULL) {
        FUNC1(TAG, "Transport must be a valid ws handle");
        return ESP_ERR_INVALID_ARG;
    }
    FUNC0(TAG, "Sending raw ws message with opcode %d", op_code);
    return FUNC2(t, op_code | WS_FIN, WS_MASK, b, len, timeout_ms);
}