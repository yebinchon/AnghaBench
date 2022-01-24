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
struct TYPE_4__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int,int,int,int) ; 
 TYPE_1__* colon ; 
 TYPE_1__* sucks ; 

void
FUNC3
( int		x,
  int		y,
  int		t )
{

    int		div;
    int		n;

    if (t<0)
	return;

    if (t <= 61*59)
    {
	div = 1;

	do
	{
	    n = (t / div) % 60;
	    x = FUNC2(x, y, n, 2) - FUNC0(colon->width);
	    div *= 60;

	    // draw
	    if (div==60 || t / div)
		FUNC1(x, y, FB, colon);
	    
	} while (t / div);
    }
    else
    {
	// "sucks"
	FUNC1(x - FUNC0(sucks->width), y, FB, sucks); 
    }
}