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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  scratch ;
struct TYPE_4__ {char* data; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef  TYPE_1__ STRING_T ;

/* Variables and functions */
 TYPE_1__* allocated_strings ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

char *FUNC4(const char *fmt, va_list ap)
{
    char scratch[512];
    int len;
    STRING_T *str;
    len = FUNC3(scratch, sizeof(scratch), fmt, ap) + 1;

    if (len > sizeof(scratch))
	FUNC0("Maximum string length exceeded");

    str = FUNC1(sizeof(STRING_T) + len);
    if (!str)
	FUNC0("Out of memory");

    FUNC2(str->data, scratch, len);
    if (allocated_strings)
    {
	str->next = allocated_strings;
	str->prev = allocated_strings->prev;
	str->next->prev = str;
	str->prev->next = str;
    }
    else
    {
	str->next = str;
	str->prev = str;
	allocated_strings = str;
    }

    return str->data;
}