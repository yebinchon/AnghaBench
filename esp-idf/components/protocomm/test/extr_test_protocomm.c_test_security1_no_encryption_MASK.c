#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int id; int sec_ver; TYPE_2__* pop; } ;
typedef  TYPE_1__ session_t ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  const* data; } ;
typedef  TYPE_2__ protocomm_security_pop_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static esp_err_t FUNC11 (void)
{
    FUNC1(TAG, "Starting Security 1 no encryption test");

    const char *pop_data = "test pop";
    protocomm_security_pop_t pop = {
        .data = (const uint8_t *)pop_data,
        .len  = FUNC6(pop_data)
    };

    session_t *session = FUNC2(1, sizeof(session_t));
    if (session == NULL) {
        FUNC0(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session->id        = 1;
    session->sec_ver   = 1;
    session->pop       = &pop;

    // Start protocomm service
    if (FUNC4(1, &pop) != ESP_OK) {
        FUNC0(TAG, "Error starting test");
        FUNC3(session);
        return ESP_ERR_INVALID_STATE;
    }

    // Intialise protocomm session with zero public keys
    if (FUNC8(session) != ESP_OK) {
        FUNC0(TAG, "Error creating new session");
        FUNC5();
        FUNC3(session);
        return ESP_FAIL;
    }

    // Perform 25519 security handshake to set public keys
    if (FUNC10(session) != ESP_OK) {
        FUNC0(TAG, "Error testing security endpoint");
        FUNC7(session);
        FUNC5();
        FUNC3(session);
        return ESP_FAIL;
    }

    // Force endpoint with un-encrypted data
    session->sec_ver = 0;

    // Send unencrypted request data to echo endpoint.
    // Response would be encrypted causing echoed back
    // data to not match that which was sent, hence failing.
    if (FUNC9(session) == ESP_OK) {
        FUNC0(TAG, "Error testing request endpoint");
        session->sec_ver = 1;
        FUNC7(session);
        FUNC5();
        FUNC3(session);
        return ESP_FAIL;
    }

    session->sec_ver = 1;
    FUNC7(session);
    FUNC5();
    FUNC3(session);
    FUNC1(TAG, "Protocomm test successful");
    return ESP_OK;
}