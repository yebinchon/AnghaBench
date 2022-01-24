#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* http_header_item_handle_t ;
typedef  int /*<<< orphan*/  http_header_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {struct TYPE_6__* value; struct TYPE_6__* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  next ; 

esp_err_t FUNC4(http_header_handle_t header)
{
    http_header_item_handle_t item = FUNC0(header), tmp;
    while (item != NULL) {
        tmp = FUNC2(item, next);
        FUNC3(item->key);
        FUNC3(item->value);
        FUNC3(item);
        item = tmp;
    }
    FUNC1(header);
    return ESP_OK;
}