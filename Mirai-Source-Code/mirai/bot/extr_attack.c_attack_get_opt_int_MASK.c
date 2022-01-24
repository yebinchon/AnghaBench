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
typedef  int /*<<< orphan*/  uint8_t ;
struct attack_option {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,struct attack_option*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int) ; 

int FUNC2(uint8_t opts_len, struct attack_option *opts, uint8_t opt, int def)
{
    char *val = FUNC0(opts_len, opts, opt, NULL);

    if (val == NULL)
        return def;
    else
        return FUNC1(val, 10);
}