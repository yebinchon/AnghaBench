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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(int32_t got_tag, int32_t expected_tag) {
    if (got_tag != expected_tag) {
        char got_tag_str[4], expected_tag_str[4];
        FUNC0(got_tag_str, got_tag);
        FUNC0(expected_tag_str, expected_tag);
        FUNC1(stderr, "wanted tag %.4s, got %.4s\n", expected_tag_str,
                got_tag_str);
        return -1;
    }
    return 0;
}