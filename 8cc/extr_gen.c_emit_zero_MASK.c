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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(int size) {
    SAVE;
    for (; size >= 8; size -= 8) FUNC0(".quad 0");
    for (; size >= 4; size -= 4) FUNC0(".long 0");
    for (; size > 0; size--)     FUNC0(".byte 0");
}