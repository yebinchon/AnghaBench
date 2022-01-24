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
 int dumpast ; 
 int dumpsource ; 
 int dumpstack ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(char *s) {
    if (!FUNC0(s, "dump-ast"))
        dumpast = true;
    else if (!FUNC0(s, "dump-stack"))
        dumpstack = true;
    else if (!FUNC0(s, "no-dump-source"))
        dumpsource = false;
    else
        FUNC1(1);
}