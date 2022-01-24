#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  cores; } ;
typedef  TYPE_1__ esp_chip_info_t ;
typedef  int /*<<< orphan*/  cJSON ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  IDF_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static esp_err_t FUNC9(httpd_req_t *req)
{
    FUNC8(req, "application/json");
    cJSON *root = FUNC2();
    esp_chip_info_t chip_info;
    FUNC5(&chip_info);
    FUNC1(root, "version", IDF_VER);
    FUNC0(root, "cores", chip_info.cores);
    const char *sys_info = FUNC4(root);
    FUNC7(req, sys_info);
    FUNC6((void *)sys_info);
    FUNC3(root);
    return ESP_OK;
}