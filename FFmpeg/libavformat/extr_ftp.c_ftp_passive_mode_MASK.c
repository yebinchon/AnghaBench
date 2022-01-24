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
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (TYPE_1__*,char const*,int const*,char**) ; 

__attribute__((used)) static int FUNC6(FTPContext *s)
{
    char *res = NULL, *start = NULL, *end = NULL;
    int i;
    static const char *command = "PASV\r\n";
    static const int pasv_codes[] = {227, 0};

    if (FUNC5(s, command, pasv_codes, &res) != 227 || !res)
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

    *end  = '\0';
    /* skip ip */
    if (!FUNC3(start, ",", &end)) goto fail;
    if (!FUNC3(end, ",", &end)) goto fail;
    if (!FUNC3(end, ",", &end)) goto fail;
    if (!FUNC3(end, ",", &end)) goto fail;

    /* parse port number */
    start = FUNC3(end, ",", &end);
    if (!start) goto fail;
    s->server_data_port = FUNC1(start) * 256;
    start = FUNC3(end, ",", &end);
    if (!start) goto fail;
    s->server_data_port += FUNC1(start);
    FUNC4(s, "Server data port: %d\n", s->server_data_port);

    FUNC2(res);
    return 0;

  fail:
    FUNC2(res);
    s->server_data_port = -1;
    return FUNC0(EIO);
}