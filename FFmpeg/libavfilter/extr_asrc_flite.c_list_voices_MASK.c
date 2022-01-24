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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* voice_entries ; 

__attribute__((used)) static void FUNC2(void *log_ctx, const char *sep)
{
    int i, n = FUNC0(voice_entries);
    for (i = 0; i < n; i++)
        FUNC1(log_ctx, AV_LOG_INFO, "%s%s",
               voice_entries[i].name, i < (n-1) ? sep : "\n");
}