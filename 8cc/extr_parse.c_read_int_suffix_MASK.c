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
typedef  int /*<<< orphan*/  Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * type_llong ; 
 int /*<<< orphan*/ * type_long ; 
 int /*<<< orphan*/ * type_uint ; 
 int /*<<< orphan*/ * type_ullong ; 
 int /*<<< orphan*/ * type_ulong ; 

__attribute__((used)) static Type *FUNC1(char *s) {
    if (!FUNC0(s, "u"))
        return type_uint;
    if (!FUNC0(s, "l"))
        return type_long;
    if (!FUNC0(s, "ul") || !FUNC0(s, "lu"))
        return type_ulong;
    if (!FUNC0(s, "ll"))
        return type_llong;
    if (!FUNC0(s, "ull") || !FUNC0(s, "llu"))
        return type_ullong;
    return NULL;
}