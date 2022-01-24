#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  TYPE_1__* ringbuf_t ;
struct TYPE_7__ {void const* head; void const* buf; int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,void const*,size_t) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void const*) ; 

void *FUNC7(ringbuf_t dst,const void *src, size_t count)
{
	const uint8_t *u8src = src;
	const uint8_t *bufend = FUNC4(dst);
	int overflow = count > FUNC3(dst);
	size_t nread = 0;

	while (nread != count){
		FUNC1(bufend > dst->head);
		size_t n = FUNC0(bufend - dst->head, count - nread);
		FUNC2(dst->head, u8src + nread, n);
		dst->head += n;
		nread += n;

		if (dst->head == bufend)
			dst->head = dst->buf;
	}

	if (overflow) {
		dst->tail = FUNC6(dst, dst->head);
		FUNC1(FUNC5(dst));
	}

	return dst->head;
}