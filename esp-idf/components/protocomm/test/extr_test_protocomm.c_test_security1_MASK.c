#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int id; int sec_ver; TYPE_2__* pop; } ;
typedef  TYPE_1__ session_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  const* data; } ;
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
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static esp_err_t FUNC6 (void)
{
    FUNC1(TAG, "Starting Sec1 test");

    const char *pop_data = "test pop";
    protocomm_security_pop_t pop = {
        .data = (const uint8_t *)pop_data,
        .len  = FUNC4(pop_data)
    };

    session_t *session = FUNC2(1, sizeof(session_t));
    if (session == NULL) {
        FUNC0(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session->id        = 7;
    session->sec_ver   = 1;
    session->pop       = &pop;

    if (FUNC5 (session) != ESP_OK) {
        FUNC0(TAG, "Sec1 test failed");
        FUNC3(session);
        return ESP_FAIL;
    }

    FUNC1(TAG, "Sec1 test successful");
    FUNC3(session);
    return ESP_OK;
}