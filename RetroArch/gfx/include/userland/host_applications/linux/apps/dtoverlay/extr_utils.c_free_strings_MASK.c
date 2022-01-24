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
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ STRING_T ;

/* Variables and functions */
 TYPE_1__* allocated_strings ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(void)
{
    if (allocated_strings)
    {
	STRING_T *str = allocated_strings;
	do
	{
	    STRING_T *t = str;
	    str = t->next;
	    FUNC0(t);
	} while (str != allocated_strings);
	allocated_strings = NULL;
    }
}