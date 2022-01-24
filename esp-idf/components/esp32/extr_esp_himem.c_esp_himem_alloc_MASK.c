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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int block_ct; struct TYPE_6__* block; } ;
typedef  TYPE_1__ esp_himem_ramdata_t ;
typedef  TYPE_1__* esp_himem_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 size_t CACHE_BLOCKSIZE ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_SIZE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int,TYPE_1__*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spinlock ; 

esp_err_t FUNC5(size_t size, esp_himem_handle_t *handle_out)
{
    if (size % CACHE_BLOCKSIZE != 0) {
        return ESP_ERR_INVALID_SIZE;
    }
    int blocks = size / CACHE_BLOCKSIZE;
    esp_himem_ramdata_t *r = FUNC1(sizeof(esp_himem_ramdata_t), 1);
    if (!r) {
        goto nomem;
    }
    r->block = FUNC1(sizeof(uint16_t), blocks);
    if (!r->block) {
        goto nomem;
    }
    FUNC3(&spinlock);
    int ok = FUNC0(blocks, r->block);
    FUNC4(&spinlock);
    if (!ok) {
        goto nomem;
    }
    r->block_ct = blocks;
    *handle_out = r;
    return ESP_OK;
nomem:
    if (r) {
        FUNC2(r->block);
    }
    FUNC2(r);
    return ESP_ERR_NO_MEM;
}