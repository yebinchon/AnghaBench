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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(URLContext *h, const char *path)
{
    char buffer[1024];

    if (!*path) return FUNC0(EINVAL);
    switch (*++path) {
        case '5':
        case '9':
            path = FUNC4(path, '/');
            if (!path) return FUNC0(EINVAL);
            break;
        default:
            FUNC1(h, AV_LOG_WARNING,
                   "Gopher protocol type '%c' not supported yet!\n",
                   *path);
            return FUNC0(EINVAL);
    }

    /* send gopher sector */
    FUNC3(buffer, sizeof(buffer), "%s\r\n", path);

    if (FUNC2(h, buffer, FUNC5(buffer)) < 0)
        return FUNC0(EIO);

    return 0;
}