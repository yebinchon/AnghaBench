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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  esp_ble_mesh_model_t ;
typedef  int /*<<< orphan*/  esp_ble_mesh_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  CID_NVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_ble_mesh_model_t *FUNC4(uint16_t element_addr, uint16_t model_id,
        uint16_t company_id)
{
    esp_ble_mesh_elem_t *element = NULL;

    if (!FUNC0(element_addr)) {
        return NULL;
    }

    element = FUNC1(element_addr);
    if (!element) {
        return NULL;
    }

    if (company_id == CID_NVAL) {
        return FUNC2(element, model_id);
    } else {
        return FUNC3(element, company_id, model_id);
    }
}