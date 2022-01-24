#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ boolean ;
struct TYPE_4__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int HU_FONTSIZE ; 
 int HU_FONTSTART ; 
 int SCREENWIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__** hu_font ; 
 int FUNC3 (char) ; 

int
FUNC4
( int		x,
  int		y,
  boolean	direct,
  char*		string )
{
    int 	c;
    int		w;

    while (*string)
    {
	c = FUNC3(*string) - HU_FONTSTART;
	string++;
	if (c < 0 || c> HU_FONTSIZE)
	{
	    x += 4;
	    continue;
	}
		
	w = FUNC0 (hu_font[c]->width);
	if (x+w > SCREENWIDTH)
	    break;
	if (direct)
	    FUNC2(x, y, 0, hu_font[c]);
	else
	    FUNC1(x, y, 0, hu_font[c]);
	x+=w;
    }

    return x;
}