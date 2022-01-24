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
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 

int FUNC2(list *l, char *key, int def)
{
    char *v = FUNC1(l, key);
    if(v) return FUNC0(v);
    return def;
}