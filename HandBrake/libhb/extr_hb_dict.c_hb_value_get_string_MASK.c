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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 char const* FUNC1 (int /*<<< orphan*/  const*) ; 

const char * FUNC2(const hb_value_t *value)
{
    if (FUNC0(value) != HB_VALUE_TYPE_STRING) return NULL;
    return FUNC1(value);
}