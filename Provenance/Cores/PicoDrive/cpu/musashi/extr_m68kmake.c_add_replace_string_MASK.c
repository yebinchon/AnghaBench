#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t length; int /*<<< orphan*/ ** replace; } ;
typedef  TYPE_1__ replace_struct ;

/* Variables and functions */
 size_t MAX_REPLACE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 

void FUNC2(replace_struct* replace, const char* search_str, const char* replace_str)
{
	if(replace->length >= MAX_REPLACE_LENGTH)
		FUNC0("overflow in replace structure");

	FUNC1(replace->replace[replace->length][0], search_str);
	FUNC1(replace->replace[replace->length++][1], replace_str);
}