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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char ESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC3(void) {
    char buf[32];
    int cols, rows;
    unsigned int i = 0;

    /* Report cursor location */
    FUNC0(stdout, "\x1b[6n");

    /* Read the response: ESC [ rows ; cols R */
    while (i < sizeof(buf)-1) {
        if (FUNC1(buf+i, 1, 1, stdin) != 1) break;
        if (buf[i] == 'R') break;
        i++;
    }
    buf[i] = '\0';
    /* Parse it. */
    if (buf[0] != ESC || buf[1] != '[') return -1;
    if (FUNC2(buf+2,"%d;%d",&rows,&cols) != 2) return -1;
    return cols;
}