#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_1__*,char const*,int const*,char**) ; 

__attribute__((used)) static int FUNC4(FTPContext *s)
{
    char *res = NULL, *start = NULL, *end = NULL;
    int i;
    static const char *command = "PWD\r\n";
    static const int pwd_codes[] = {257, 0};

    if (FUNC3(s, command, pwd_codes, &res) != 257 || !res)
        goto fail;

    for (i = 0; res[i]; ++i) {
        if (res[i] == '"') {
            if (!start) {
                start = res + i + 1;
                continue;
            }
            end = res + i;
            break;
        }
    }

    if (!end)
        goto fail;

    *end = '\0';
    s->path = FUNC2(start);

    FUNC1(res);

    if (!s->path)
        return FUNC0(ENOMEM);
    return 0;

  fail:
    FUNC1(res);
    return FUNC0(EIO);
}