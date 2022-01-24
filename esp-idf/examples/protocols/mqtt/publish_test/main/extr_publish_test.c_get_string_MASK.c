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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(char *line, size_t size)
{

    int count = 0;
    while (count < size) {
        int c = FUNC0(stdin);
        if (c == '\n') {
            line[count] = '\0';
            break;
        } else if (c > 0 && c < 127) {
            line[count] = c;
            ++count;
        }
        FUNC1(10 / portTICK_PERIOD_MS);
    }
}