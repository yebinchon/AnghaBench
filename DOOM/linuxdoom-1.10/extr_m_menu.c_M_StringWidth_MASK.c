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
struct TYPE_2__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int HU_FONTSIZE ; 
 int HU_FONTSTART ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__** hu_font ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char) ; 

int FUNC3(char* string)
{
    int             i;
    int             w = 0;
    int             c;
	
    for (i = 0;i < FUNC1(string);i++)
    {
	c = FUNC2(string[i]) - HU_FONTSTART;
	if (c < 0 || c >= HU_FONTSIZE)
	    w += 4;
	else
	    w += FUNC0 (hu_font[c]->width);
    }
		
    return w;
}