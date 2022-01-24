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
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(client *c, const char *s, size_t len) {
    if (FUNC2(c) != C_OK) return;
    if (FUNC1(c,s,len) != C_OK)
        FUNC0(c,s,len);
}