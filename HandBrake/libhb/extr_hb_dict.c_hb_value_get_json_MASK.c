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
 int FUNC0 (int) ; 
 int JSON_SORT_KEYS ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int) ; 

char * FUNC2(const hb_value_t *value)
{
    return FUNC1(value, FUNC0(4) | JSON_SORT_KEYS);
}