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
typedef  int /*<<< orphan*/  wifi_prov_ctx_t ;
typedef  int /*<<< orphan*/  wifi_config_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static wifi_config_t *FUNC3(wifi_prov_ctx_t **ctx)
{
    FUNC1(*ctx);
    (*ctx) = (wifi_prov_ctx_t *) FUNC0(1, sizeof(wifi_prov_ctx_t));
    return FUNC2(ctx);
}