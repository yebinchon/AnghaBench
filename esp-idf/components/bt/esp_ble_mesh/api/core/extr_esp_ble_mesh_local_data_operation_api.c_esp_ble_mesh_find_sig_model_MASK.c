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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

esp_ble_mesh_model_t *FUNC1(const esp_ble_mesh_elem_t *element, uint16_t model_id)
{
    if (element == NULL) {
        return NULL;
    }
    return FUNC0(element, model_id);
}