#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int id; int sec_ver; TYPE_2__* pop; } ;
typedef  TYPE_1__ session_t ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  const* data; } ;
typedef  TYPE_2__ protocomm_security_pop_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
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

__attribute__((used)) static esp_err_t FUNC10 (void)
{
    FUNC1(TAG, "Starting Security 1 session overflow test");

    const char *pop_data = "test pop";
    protocomm_security_pop_t pop = {
        .data = (const uint8_t *)pop_data,
        .len  = FUNC6(pop_data)
    };

    session_t *session1 = FUNC2(1, sizeof(session_t));
    if (session1 == NULL) {
        FUNC0(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session1->id        = 2;
    session1->sec_ver   = 1;
    session1->pop       = &pop;

    session_t *session2 = FUNC2(1, sizeof(session_t));
    if (session2 == NULL) {
        FUNC0(TAG, "Error allocating session");
        FUNC3(session1);
        return ESP_ERR_NO_MEM;
    }

    session2->id         = 3;
    session2->sec_ver    = 1;
    session2->pop        = NULL;

    // Start protocomm service
    if (FUNC4(1, &pop) != ESP_OK) {
        FUNC0(TAG, "Error starting test");
        FUNC3(session1);
        FUNC3(session2);
        return ESP_FAIL;
    }

    // Intialise protocomm session with zero public keys
    if (FUNC8(session1) != ESP_OK) {
        FUNC0(TAG, "Error creating new session");
        FUNC5();
        FUNC3(session1);
        FUNC3(session2);
        return ESP_FAIL;
    }

    // Perform 25519 security handshake to set public keys
    if (FUNC9(session1) != ESP_OK) {
        FUNC0(TAG, "Error testing security endpoint");
        FUNC7(session1);
        FUNC5();
        FUNC3(session1);
        FUNC3(session2);
        return ESP_FAIL;
    }

    // Try to perform security handshake again with different
    // session ID without registering new session, hence failing
    if (FUNC9(session2) == ESP_OK) {
        FUNC0(TAG, "Error testing security endpoint");
        FUNC7(session1);
        FUNC5();
        FUNC3(session1);
        FUNC3(session2);
        return ESP_FAIL;
    }

    FUNC7(session1);
    FUNC5();
    FUNC3(session1);
    FUNC3(session2);

    FUNC1(TAG, "Protocomm test successful");
    return ESP_OK;
}