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
struct TYPE_2__ {int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__** hu_font ; 
 int FUNC1 (char*) ; 

int FUNC2(char* string)
{
    int             i;
    int             h;
    int             height = FUNC0(hu_font[0]->height);
	
    h = height;
    for (i = 0;i < FUNC1(string);i++)
	if (string[i] == '\n')
	    h += height;
		
    return h;
}