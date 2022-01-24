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
struct TYPE_5__ {int /*<<< orphan*/  conn_control; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,char**,int const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(FTPContext *s, const char *command,
                            const int response_codes[], char **response)
{
    int err;

    FUNC1(s, "%s", command);

    if (response)
        *response = NULL;

    if (!s->conn_control)
        return FUNC0(EIO);

    if ((err = FUNC2(s->conn_control, command, FUNC4(command))) < 0)
        return err;
    if (!err)
        return -1;

    /* return status */
    if (response_codes) {
        return FUNC3(s, response, response_codes);
    }
    return 0;
}