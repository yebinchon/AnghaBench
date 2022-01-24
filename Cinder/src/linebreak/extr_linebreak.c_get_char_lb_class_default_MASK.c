#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ utf32_t ;
typedef  enum LineBreakClass { ____Placeholder_LineBreakClass } LineBreakClass ;
struct TYPE_2__ {scalar_t__ end; int /*<<< orphan*/  lbp; } ;

/* Variables and functions */
 size_t LINEBREAK_INDEX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* lb_prop_index ; 

__attribute__((used)) static enum LineBreakClass FUNC2(
		utf32_t ch)
{
	size_t i = 0;
	while (ch > lb_prop_index[i].end)
		++i;
	FUNC0(i < LINEBREAK_INDEX_SIZE);
	return FUNC1(ch, lb_prop_index[i].lbp);
}