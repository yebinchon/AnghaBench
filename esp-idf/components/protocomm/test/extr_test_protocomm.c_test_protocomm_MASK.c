#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pop; int /*<<< orphan*/  sec_ver; } ;
typedef  TYPE_1__ session_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static esp_err_t FUNC9 (session_t *session)
{
    FUNC1(TAG, "Starting Protocomm test");

    // Start protocomm service
    if (FUNC2(session->sec_ver, session->pop) != ESP_OK) {
        FUNC0(TAG, "Error starting test");
        return ESP_FAIL;
    }

    // Check version endpoint
    if (FUNC8(session) != ESP_OK) {
        FUNC0(TAG, "Error testing version endpoint");
        FUNC3();
        return ESP_FAIL;
    }

    // Intialise protocomm session with zero public keys
    if (FUNC5(session) != ESP_OK) {
        FUNC0(TAG, "Error creating new session");
        FUNC3();
        return ESP_FAIL;
    }

    // Perform 25519 security handshake to set public keys
    if (FUNC7(session) != ESP_OK) {
        FUNC0(TAG, "Error testing security endpoint");
        FUNC4(session);
        FUNC3();
        return ESP_FAIL;
    }

    // Send request data to echo endpoint encrypted with
    // the set public keys on both client and server side
    if (FUNC6(session) != ESP_OK) {
        FUNC0(TAG, "Error testing request endpoint");
        FUNC4(session);
        FUNC3();
        return ESP_FAIL;
    }

    // Stop protocomm service
    FUNC4(session);
    FUNC3();
    FUNC1(TAG, "Protocomm test successful");
    return ESP_OK;
}