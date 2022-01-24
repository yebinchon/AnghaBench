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
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static const char* FUNC3(const char *master_url, const char *media_url)
{
    const char *p = FUNC2(master_url, '/');
    size_t base_len = 0;

    if (!p) p = FUNC2(master_url, '\\');

    if (p) {
        base_len = p + 1 - master_url;
        if (FUNC1(master_url, media_url, base_len)) {
            FUNC0(NULL, AV_LOG_WARNING, "Unable to find relative url\n");
            return NULL;
        }
    }

    return media_url + base_len;
}