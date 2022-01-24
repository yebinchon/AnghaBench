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
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(int start, int end) {
    SAVE;
    for (; start <= end - 4; start += 4)
        FUNC0("movl $0, %d(#rbp)", start);
    for (; start < end; start++)
        FUNC0("movb $0, %d(#rbp)", start);
}