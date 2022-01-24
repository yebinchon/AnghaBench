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
struct TYPE_2__ {int v_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned char,int,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned char,int,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned char,int,unsigned char,int) ; 
 TYPE_1__ vinfo ; 

__attribute__((used)) static void
FUNC3(unsigned int xx, unsigned int yy, unsigned char ch, int attrs,
	      unsigned char ch_previous, int attrs_previous)
{
	if(!vinfo.v_depth)
		return;

	switch(vinfo.v_depth) {
	case 8:
		FUNC2(xx, yy, ch, attrs, ch_previous, attrs_previous);
		break;
	case 16:
		FUNC0(xx, yy, ch, attrs, ch_previous,
				 attrs_previous);
		break;
	case 30:
	case 32:
		FUNC1(xx, yy, ch, attrs, ch_previous,
				 attrs_previous);
		break;
	}
}