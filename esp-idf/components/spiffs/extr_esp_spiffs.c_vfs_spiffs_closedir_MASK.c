#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ vfs_spiffs_dir_t ;
struct TYPE_5__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ esp_spiffs_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void* ctx, DIR* pdir)
{
    FUNC3(pdir);
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    vfs_spiffs_dir_t * dir = (vfs_spiffs_dir_t *)pdir;
    int res = FUNC1(&dir->d);
    FUNC4(dir);
    if (res < 0) {
        errno = FUNC5(FUNC2(efs->fs));
        FUNC0(efs->fs);
        return -1;
    }
    return res;
}