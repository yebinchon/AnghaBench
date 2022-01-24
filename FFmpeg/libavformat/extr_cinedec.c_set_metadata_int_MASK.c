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
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(AVDictionary **dict, const char *key, int value, int allow_zero)
{
    if (value || allow_zero) {
        return FUNC0(dict, key, value, 0);
    }
    return 0;
}