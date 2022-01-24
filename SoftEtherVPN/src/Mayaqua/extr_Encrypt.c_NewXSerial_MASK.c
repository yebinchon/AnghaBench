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
struct TYPE_4__ {size_t size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ X_SERIAL ;
typedef  size_t UINT ;
typedef  scalar_t__ UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

X_SERIAL *FUNC3(void *data, UINT size)
{
	X_SERIAL *serial;
	UCHAR *buf = (UCHAR *)data;
	UINT i;
	// Validate arguments
	if (data == NULL || size == 0)
	{
		return NULL;
	}

	for (i = 0;i < size;i++)
	{
		if (buf[i] != 0)
		{
			break;
		}
	}
	if (i == size)
	{
		i = size - 1;
	}
	buf += i;

	serial = FUNC1(sizeof(X_SERIAL));
	serial->size = size - i;
	serial->data = FUNC2(size + 16);
	FUNC0(serial->data, buf, size - i);

	return serial;
}