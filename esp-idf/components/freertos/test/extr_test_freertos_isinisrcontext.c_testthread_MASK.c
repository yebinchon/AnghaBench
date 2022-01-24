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
typedef  int /*<<< orphan*/  intr_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  ETS_INTERNAL_TIMER1_INTR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int in_int_context ; 
 int int_handled ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  testint ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(void *arg) {
    intr_handle_t handle;
    in_int_context=0;
    int_handled=0;
    FUNC0(!FUNC6());
    FUNC8(1, FUNC7()+8000000);
    esp_err_t err = FUNC2(ETS_INTERNAL_TIMER1_INTR_SOURCE, 0, &testint, NULL, &handle);
    FUNC1(ESP_OK, err);
    FUNC4(100 / portTICK_PERIOD_MS);
    FUNC0(int_handled);
    FUNC0(in_int_context);
    FUNC1( ESP_OK, FUNC3(handle) );
    FUNC5(NULL);
}