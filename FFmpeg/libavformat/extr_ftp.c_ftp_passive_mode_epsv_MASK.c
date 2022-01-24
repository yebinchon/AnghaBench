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
struct TYPE_5__ {int server_data_port; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int FUNC4 (TYPE_1__*,char const*,int const*,char**) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(FTPContext *s)
{
    char *res = NULL, *start = NULL, *end = NULL;
    int i;
    static const char d = '|';
    static const char *command = "EPSV\r\n";
    static const int epsv_codes[] = {229, 0};

    if (FUNC4(s, command, epsv_codes, &res) != 229 || !res)
        goto fail;

    for (i = 0; res[i]; ++i) {
        if (res[i] == '(') {
            start = res + i + 1;
        } else if (res[i] == ')') {
            end = res + i;
            break;
        }
    }
    if (!start || !end)
        goto fail;

    *end = '\0';
    if (FUNC5(start) < 5)
        goto fail;
    if (start[0] != d || start[1] != d || start[2] != d || end[-1] != d)
        goto fail;
    start += 3;
    end[-1] = '\0';

    s->server_data_port = FUNC1(start);
    FUNC3(s, "Server data port: %d\n", s->server_data_port);

    FUNC2(res);
    return 0;

  fail:
    FUNC2(res);
    s->server_data_port = -1;
    return FUNC0(ENOSYS);
}