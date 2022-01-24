#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ esp_spiffs_t ;

/* Variables and functions */
 int SPIFFS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void* ctx, const char * path, int flags, int mode)
{
    FUNC3(path);
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    int spiffs_flags = FUNC4(flags);
    int fd = FUNC2(efs->fs, path, spiffs_flags, mode);
    if (fd < 0) {
        errno = FUNC5(FUNC1(efs->fs));
        FUNC0(efs->fs);
        return -1;
    }
    if (!(spiffs_flags & SPIFFS_RDONLY)) {
        FUNC6(efs->fs, fd);
    }
    return fd;
}