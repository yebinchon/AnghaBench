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
typedef  int /*<<< orphan*/  command ;
struct TYPE_4__ {char* path; int filesize; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CONTROL_BUFFER_SIZE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char*,int const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(FTPContext *s)
{
    char command[CONTROL_BUFFER_SIZE];
    char *res = NULL;
    static const int size_codes[] = {213, 0};

    FUNC3(command, sizeof(command), "SIZE %s\r\n", s->path);
    if (FUNC2(s, command, size_codes, &res) == 213 && res && FUNC4(res) > 4) {
        s->filesize = FUNC5(&res[4], NULL, 10);
    } else {
        s->filesize = -1;
        FUNC1(res);
        return FUNC0(EIO);
    }

    FUNC1(res);
    return 0;
}