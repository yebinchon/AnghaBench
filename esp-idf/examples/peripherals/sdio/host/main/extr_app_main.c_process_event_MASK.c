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
typedef  int /*<<< orphan*/  esp_slave_context_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ESP_ERR_NOT_FINISHED ; 
 scalar_t__ ESP_ERR_NOT_FOUND ; 
 scalar_t__ ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LOG_INFO ; 
 scalar_t__ ESP_OK ; 
 int HOST_SLC0_RX_NEW_PACKET_INT_ST ; 
 size_t READ_BUFFER_LEN ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,size_t*,int const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcv_buffer ; 

esp_err_t FUNC10(esp_slave_context_t *context)
{
    esp_err_t ret = FUNC9(context, 0);
    if (ret == ESP_ERR_TIMEOUT) {
        return ret;
    }
    FUNC1(ret);

    uint32_t intr_raw, intr_st;
    ret = FUNC7(context, &intr_raw, &intr_st);
    FUNC1(ret);
    ret = FUNC6(context, intr_raw);
    FUNC1(ret);
    FUNC2(TAG, "intr: %08X", intr_raw);

    for (int i = 0; i < 8; i++) {
        if (intr_raw & FUNC0(i)) {
            FUNC4(TAG, "host int: %d", i);
        }
    }

    const int wait_ms = 50;
    if (intr_raw & HOST_SLC0_RX_NEW_PACKET_INT_ST) {
        FUNC2(TAG, "new packet coming");
        while (1) {
            size_t size_read = READ_BUFFER_LEN;
            ret = FUNC8(context, rcv_buffer, READ_BUFFER_LEN, &size_read, wait_ms);
            if (ret == ESP_ERR_NOT_FOUND) {
                FUNC3(TAG, "interrupt but no data can be read");
                break;
            } else if (ret != ESP_OK && ret != ESP_ERR_NOT_FINISHED) {
                FUNC3(TAG, "rx packet error: %08X", ret);
                return ret;
            }

            FUNC4(TAG, "receive data, size: %d", size_read);
            FUNC5(TAG, rcv_buffer, size_read, ESP_LOG_INFO);
            if (ret == ESP_OK) {
                break;
            }
        }
    }
    return ESP_OK;
}