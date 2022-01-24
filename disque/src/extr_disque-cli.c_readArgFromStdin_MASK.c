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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static sds FUNC6(void) {
    char buf[1024];
    sds arg = FUNC5();

    while(1) {
        int nread = FUNC3(FUNC1(stdin),buf,1024);

        if (nread == 0) break;
        else if (nread == -1) {
            FUNC2("Reading from standard input");
            FUNC0(1);
        }
        arg = FUNC4(arg,buf,nread);
    }
    return arg;
}