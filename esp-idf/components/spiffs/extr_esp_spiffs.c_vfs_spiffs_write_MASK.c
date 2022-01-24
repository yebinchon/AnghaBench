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
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ esp_spiffs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,void*,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(void* ctx, int fd, const void * data, size_t size)
{
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    ssize_t res = FUNC2(efs->fs, fd, (void *)data, size);
    if (res < 0) {
        errno = FUNC3(FUNC1(efs->fs));
        FUNC0(efs->fs);
        return -1;
    }
    return res;
}