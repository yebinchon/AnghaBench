#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* work; struct TYPE_5__* cache; struct TYPE_5__* fds; int /*<<< orphan*/  lock; struct TYPE_5__* fs; } ;
typedef  TYPE_1__ esp_spiffs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(esp_spiffs_t ** efs)
{
    esp_spiffs_t * e = *efs;
    if (*efs == NULL) {
        return;
    }
    *efs = NULL;

    if (e->fs) {
        FUNC0(e->fs);
        FUNC1(e->fs);
    }
    FUNC2(e->lock);
    FUNC1(e->fds);
    FUNC1(e->cache);
    FUNC1(e->work);
    FUNC1(e);
}