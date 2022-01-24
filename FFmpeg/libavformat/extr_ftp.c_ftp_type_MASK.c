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
typedef  int /*<<< orphan*/  FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(FTPContext *s)
{
    static const char *command = "TYPE I\r\n";
    static const int type_codes[] = {200, 0};

    if (FUNC1(s, command, type_codes, NULL) != 200)
        return FUNC0(EIO);

    return 0;
}