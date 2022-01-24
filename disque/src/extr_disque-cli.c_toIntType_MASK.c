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
 int TYPE_HASH ; 
 int TYPE_LIST ; 
 int TYPE_NONE ; 
 int TYPE_SET ; 
 int TYPE_STRING ; 
 int TYPE_ZSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char *key, char *type) {
    if(!FUNC2(type, "string")) {
        return TYPE_STRING;
    } else if(!FUNC2(type, "list")) {
        return TYPE_LIST;
    } else if(!FUNC2(type, "set")) {
        return TYPE_SET;
    } else if(!FUNC2(type, "hash")) {
        return TYPE_HASH;
    } else if(!FUNC2(type, "zset")) {
        return TYPE_ZSET;
    } else if(!FUNC2(type, "none")) {
        return TYPE_NONE;
    } else {
        FUNC1(stderr, "Unknown type '%s' for key '%s'\n", type, key);
        FUNC0(1);
    }
}