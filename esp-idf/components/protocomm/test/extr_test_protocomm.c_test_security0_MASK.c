#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; int /*<<< orphan*/ * pop; scalar_t__ sec_ver; } ;
typedef  TYPE_1__ session_t ;
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
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static esp_err_t FUNC5 (void)
{
    FUNC1(TAG, "Starting Sec0 test");

    session_t *session = FUNC2(1, sizeof(session_t));
    if (session == NULL) {
        FUNC0(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session->id        = 8;
    session->sec_ver   = 0;
    session->pop       = NULL;

    if (FUNC4 (session) != ESP_OK) {
        FUNC0(TAG, "Sec0 test failed");
        FUNC3(session);
        return ESP_FAIL;
    }

    FUNC1(TAG, "Sec0 test successful");
    FUNC3(session);
    return ESP_OK;
}