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
struct TYPE_4__ {int permanent; scalar_t__ vfs_index; int local_fd; } ;
typedef  TYPE_1__ fd_table_t ;
typedef  scalar_t__ esp_vfs_id_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_1__ FD_TABLE_ENTRY_UNUSED ; 
 int MAX_FDS ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* s_fd_table ; 
 int /*<<< orphan*/  s_fd_table_lock ; 
 scalar_t__ s_vfs_count ; 

esp_err_t FUNC4(esp_vfs_id_t vfs_id, int fd)
{
    esp_err_t ret = ESP_ERR_INVALID_ARG;

    if (vfs_id < 0 || vfs_id >= s_vfs_count || fd < 0 || fd >= MAX_FDS) {
        FUNC0(TAG, "Invalid arguments for esp_vfs_unregister_fd(%d, %d)", vfs_id, fd);
        return ret;
    }

    FUNC1(&s_fd_table_lock);
    fd_table_t *item = s_fd_table + fd;
    if (item->permanent == true && item->vfs_index == vfs_id && item->local_fd == fd) {
        *item = FD_TABLE_ENTRY_UNUSED;
        ret = ESP_OK;
    }
    FUNC2(&s_fd_table_lock);

    FUNC0(TAG, "esp_vfs_unregister_fd(%d, %d) finished with %s", vfs_id, fd, FUNC3(ret));

    return ret;
}