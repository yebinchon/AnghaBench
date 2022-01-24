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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mdns_action_t ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(const char * service_name, const char * proto, uint32_t port)
{
    if (FUNC1(NULL, service_name, proto, port, NULL, 0)) {
        // This is expected failure as the service thread is not running
    }
    mdns_action_t * a = NULL;
    FUNC0(&a);
    FUNC2(a);

    if (FUNC3(service_name, proto)==NULL) {
        return ESP_FAIL;
    }
    return ESP_OK;
}