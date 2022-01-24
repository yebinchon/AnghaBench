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
struct TYPE_4__ {int size; void* data; } ;
typedef  TYPE_1__ X_SERIAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 void* FUNC1 (int) ; 

X_SERIAL *FUNC2(X_SERIAL *src)
{
	X_SERIAL *s;
	// Validate arguments
	if (src == NULL)
	{
		return NULL;
	}

	s = FUNC1(sizeof(X_SERIAL));
	s->data = FUNC1(src->size);
	FUNC0(s->data, src->data, src->size);
	s->size = src->size;

	return s;
}