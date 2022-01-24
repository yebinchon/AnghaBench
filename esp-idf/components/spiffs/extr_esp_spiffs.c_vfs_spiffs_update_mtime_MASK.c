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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_3__ {int /*<<< orphan*/  meta; } ;
typedef  TYPE_1__ spiffs_stat ;
typedef  int /*<<< orphan*/  spiffs_file ;
typedef  int /*<<< orphan*/  spiffs ;

/* Variables and functions */
 int CONFIG_SPIFFS_META_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int SPIFFS_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(spiffs *fs, spiffs_file fd)
{
#ifdef CONFIG_SPIFFS_USE_MTIME
    time_t t = time(NULL);
    spiffs_stat s;
    int ret = SPIFFS_OK;
    if (CONFIG_SPIFFS_META_LENGTH > sizeof(t)) {
        ret = SPIFFS_fstat(fs, fd, &s);
    }
    if (ret == SPIFFS_OK) {
        memcpy(s.meta, &t, sizeof(t));
        ret = SPIFFS_fupdate_meta(fs, fd, s.meta);
    }
    if (ret != SPIFFS_OK) {
        ESP_LOGW(TAG, "Failed to update mtime (%d)", ret);
    }
#endif //CONFIG_SPIFFS_USE_MTIME
}