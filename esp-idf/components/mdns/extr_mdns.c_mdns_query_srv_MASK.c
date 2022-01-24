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
typedef  int /*<<< orphan*/  mdns_result_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  MDNS_TYPE_SRV ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 

esp_err_t FUNC2(const char * instance, const char * service, const char * proto, uint32_t timeout, mdns_result_t ** result)
{
    if (FUNC0(instance) || FUNC0(service) || FUNC0(proto)) {
        return ESP_ERR_INVALID_ARG;
    }

    return FUNC1(instance, service, proto, MDNS_TYPE_SRV, timeout, 1, result);
}