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
struct wpabuf {scalar_t__ used; scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (struct wpabuf*) ; 
 void* FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,size_t) ; 

void * FUNC3(struct wpabuf *buf, size_t len)
{
	void *tmp = FUNC1(buf) + FUNC0(buf);
	buf->used += len;
	if (buf->used > buf->size) {
		FUNC2(buf, len);
	}
	return tmp;
}