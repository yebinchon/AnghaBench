#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * httpd_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  server_port; } ;
typedef  TYPE_1__ httpd_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  adder_get ; 
 int /*<<< orphan*/  adder_post ; 
 int /*<<< orphan*/  adder_put ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,TYPE_1__*) ; 

__attribute__((used)) static httpd_handle_t FUNC4(void)
{
    httpd_config_t config = FUNC1();
    // Start the httpd server
    FUNC0(TAG, "Starting server on port: '%d'", config.server_port);
    httpd_handle_t server;

    if (FUNC3(&server, &config) == ESP_OK) {
        // Set URI handlers
        FUNC0(TAG, "Registering URI handlers");
        FUNC2(server, &adder_get);
        FUNC2(server, &adder_put);
        FUNC2(server, &adder_post);
        return server;
    }

    FUNC0(TAG, "Error starting server!");
    return NULL;
}