#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ws_col; int ws_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ ws ; 

void FUNC4(size_t megabytes, int passes) {
    if (FUNC1(1, TIOCGWINSZ, &ws) == -1) {
        ws.ws_col = 80;
        ws.ws_row = 20;
    }
    FUNC2(megabytes,passes);
    FUNC3("\nYour memory passed this test.\n");
    FUNC3("Please if you are still in doubt use the following two tools:\n");
    FUNC3("1) memtest86: http://www.memtest86.com/\n");
    FUNC3("2) memtester: http://pyropus.ca/software/memtester/\n");
    FUNC0(0);
}