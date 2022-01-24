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
typedef  int /*<<< orphan*/  esp_vfs_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_3__ {int vfs_index; int permanent; int local_fd; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ ESP_OK ; 
 TYPE_1__ FD_TABLE_ENTRY_UNUSED ; 
 int /*<<< orphan*/  LEN_PATH_PREFIX_IGNORED ; 
 int MAX_FDS ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* s_fd_table ; 
 int /*<<< orphan*/  s_fd_table_lock ; 
 int /*<<< orphan*/ ** s_vfs ; 

esp_err_t FUNC5(const esp_vfs_t *vfs, void *ctx, int min_fd, int max_fd)
{
    if (min_fd < 0 || max_fd < 0 || min_fd > MAX_FDS || max_fd > MAX_FDS || min_fd > max_fd) {
        FUNC0(TAG, "Invalid arguments: esp_vfs_register_fd_range(0x%x, 0x%x, %d, %d)", (int) vfs, (int) ctx, min_fd, max_fd);
        return ESP_ERR_INVALID_ARG;
    }

    int index = -1;
    esp_err_t ret = FUNC3("", LEN_PATH_PREFIX_IGNORED, vfs, ctx, &index);

    if (ret == ESP_OK) {
        FUNC1(&s_fd_table_lock);
        for (int i = min_fd; i < max_fd; ++i) {
            if (s_fd_table[i].vfs_index != -1) {
                FUNC4(s_vfs[i]);
                s_vfs[i] = NULL;
                for (int j = min_fd; j < i; ++j) {
                    if (s_fd_table[j].vfs_index == index) {
                        s_fd_table[j] = FD_TABLE_ENTRY_UNUSED;
                    }
                }
                FUNC2(&s_fd_table_lock);
                FUNC0(TAG, "esp_vfs_register_fd_range cannot set fd %d (used by other VFS)", i);
                return ESP_ERR_INVALID_ARG;
            }
            s_fd_table[i].permanent = true;
            s_fd_table[i].vfs_index = index;
            s_fd_table[i].local_fd = i;
        }
        FUNC2(&s_fd_table_lock);
    }

    FUNC0(TAG, "esp_vfs_register_fd_range is successful for range <%d; %d) and VFS ID %d", min_fd, max_fd, index);

    return ret;
}