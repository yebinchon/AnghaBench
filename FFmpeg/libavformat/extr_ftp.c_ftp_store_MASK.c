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
struct TYPE_4__ {char* path; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CONTROL_BUFFER_SIZE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  UPLOADING ; 
 int FUNC1 (TYPE_1__*,char*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(FTPContext *s)
{
    char command[CONTROL_BUFFER_SIZE];
    static const int stor_codes[] = {150, 125, 0};
    int resp_code;

    FUNC2(command, sizeof(command), "STOR %s\r\n", s->path);
    resp_code = FUNC1(s, command, stor_codes, NULL);
    if (resp_code != 125 && resp_code != 150)
        return FUNC0(EIO);

    s->state = UPLOADING;

    return 0;
}