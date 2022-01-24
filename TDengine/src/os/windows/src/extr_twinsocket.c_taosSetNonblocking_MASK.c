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
typedef  int u_long ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC1(SOCKET sock, int on) {
    u_long mode;
    if (on) {
        mode = 1;
        FUNC0(sock, FIONBIO, &mode);
    }
    else {
        mode = 0;
        FUNC0(sock, FIONBIO, &mode);
    }
    return 0;
}