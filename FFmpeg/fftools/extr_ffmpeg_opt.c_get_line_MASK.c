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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 char FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static uint8_t *FUNC6(AVIOContext *s)
{
    AVIOContext *line;
    uint8_t *buf;
    char c;

    if (FUNC2(&line) < 0) {
        FUNC0(NULL, AV_LOG_FATAL, "Could not alloc buffer for reading preset.\n");
        FUNC5(1);
    }

    while ((c = FUNC3(s)) && c != '\n')
        FUNC4(line, c);
    FUNC4(line, 0);
    FUNC1(line, &buf);

    return buf;
}