#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int AV_LOG_ERROR ; 
 int AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (void*,int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 

__attribute__((used)) static void FUNC2(const char *message, void *userdata)
{
    int level = AV_LOG_INFO;
    if (FUNC1(message, "ERROR") != NULL) {
        level = AV_LOG_ERROR;
    }
    FUNC0(userdata, level, "%s\n", message);
}