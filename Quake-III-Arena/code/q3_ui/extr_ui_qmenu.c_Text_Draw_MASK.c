#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x; int y; int flags; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {float* color; int /*<<< orphan*/  style; TYPE_1__ generic; int /*<<< orphan*/  string; } ;
typedef  TYPE_2__ menutext_s ;

/* Variables and functions */
 int QMF_GRAYED ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 float* text_color_disabled ; 

__attribute__((used)) static void FUNC3( menutext_s *t )
{
	int		x;
	int		y;
	char	buff[512];	
	float*	color;

	x = t->generic.x;
	y = t->generic.y;

	buff[0] = '\0';

	// possible label
	if (t->generic.name)
		FUNC2(buff,t->generic.name);

	// possible value
	if (t->string)
		FUNC1(buff,t->string);
		
	if (t->generic.flags & QMF_GRAYED)
		color = text_color_disabled;
	else
		color = t->color;

	FUNC0( x, y, buff, t->style, color );
}