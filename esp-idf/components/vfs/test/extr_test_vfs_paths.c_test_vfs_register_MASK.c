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
typedef  int /*<<< orphan*/  esp_vfs_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  dummy_vfs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(const char* prefix, bool expect_success, int line)
{
    dummy_vfs_t inst;
    esp_vfs_t desc = FUNC0();
    esp_err_t err = FUNC3(prefix, &desc, &inst);
    if (expect_success) {
        FUNC2(ESP_OK, err, line, "esp_vfs_register should succeed");
    } else {
        FUNC2(ESP_ERR_INVALID_ARG,
                err, line, "esp_vfs_register should fail");
    }
    if (err == ESP_OK) {
        FUNC1( FUNC4(prefix) );
    }
}