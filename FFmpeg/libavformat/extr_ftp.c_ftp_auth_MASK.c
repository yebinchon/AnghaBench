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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char* user; char* password; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CONTROL_BUFFER_SIZE ; 
 int /*<<< orphan*/  EACCES ; 
 int FUNC1 (TYPE_1__*,char*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(FTPContext *s)
{
    char buf[CONTROL_BUFFER_SIZE];
    int err;
    static const int user_codes[] = {331, 230, 0};
    static const int pass_codes[] = {230, 0};

    FUNC2(buf, sizeof(buf), "USER %s\r\n", s->user);
    err = FUNC1(s, buf, user_codes, NULL);
    if (err == 331) {
        if (s->password) {
            FUNC2(buf, sizeof(buf), "PASS %s\r\n", s->password);
            err = FUNC1(s, buf, pass_codes, NULL);
        } else
            return FUNC0(EACCES);
    }
    if (err != 230)
        return FUNC0(EACCES);

    return 0;
}