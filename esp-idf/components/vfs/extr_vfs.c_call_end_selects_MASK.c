#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ (* end_select ) (void*) ;} ;
struct TYPE_7__ {TYPE_1__ vfs; } ;
typedef  TYPE_2__ vfs_entry_t ;
struct TYPE_8__ {scalar_t__ isset; } ;
typedef  TYPE_3__ fds_triple_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(int end_index, const fds_triple_t *vfs_fds_triple, void **driver_args)
{
    for (int i = 0; i < end_index; ++i) {
        const vfs_entry_t *vfs = FUNC2(i);
        const fds_triple_t *item = &vfs_fds_triple[i];
        if (vfs && vfs->vfs.end_select && item->isset) {
            esp_err_t err = vfs->vfs.end_select(driver_args[i]);
            if (err != ESP_OK) {
                FUNC0(TAG, "end_select failed: %s", FUNC1(err));
            }
        }
    }
}