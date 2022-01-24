#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct netbuf {TYPE_1__* p; TYPE_1__* ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  tot_len; int /*<<< orphan*/  len; void* payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBUF_REF ; 
 int /*<<< orphan*/  PBUF_TRANSPORT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct netbuf *buf, const void *dataptr,u32 size)
{
	if(buf->p!=NULL) FUNC1(buf->p);
	buf->p = FUNC0(PBUF_TRANSPORT,0,PBUF_REF);
	buf->p->payload = (void*)dataptr;
	buf->p->len = buf->p->tot_len = size;
	buf->ptr = buf->p;
}