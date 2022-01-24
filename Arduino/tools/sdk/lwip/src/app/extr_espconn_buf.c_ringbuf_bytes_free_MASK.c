#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ringbuf_t {scalar_t__ head; scalar_t__ tail; } ;

/* Variables and functions */
 size_t FUNC0 (struct ringbuf_t const*) ; 

size_t FUNC1(const struct ringbuf_t *rb)
{
	if (rb->head >= rb->tail){
		return FUNC0(rb) - (rb->head - rb->tail);
	}else{
		return rb->tail - rb->head -1;
	}
}