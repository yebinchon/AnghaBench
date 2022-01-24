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
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int EXIT_FAILURE ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(AVFormatContext **oc)
{
    int ret = 0;
    AVStream *s;

    ret = FUNC2(oc, NULL, "fifo", "-");
    if (ret) {
        FUNC4(stderr, "Failed to create format context: %s\n",
                FUNC1(ret));
        return EXIT_FAILURE;
    }

    s = FUNC3(*oc, NULL);
    if (!s) {
        FUNC4(stderr, "Failed to create stream: %s\n",
                FUNC1(ret));
        ret = FUNC0(ENOMEM);
    }

    return ret;
}