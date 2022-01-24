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
typedef  scalar_t__ u8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct pbuf {scalar_t__ ref; scalar_t__ flags; struct pbuf* next; } ;

/* Variables and functions */
 scalar_t__ PBUF_FLAG_POOL ; 
 scalar_t__ PBUF_FLAG_REF ; 
 scalar_t__ PBUF_FLAG_ROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*) ; 
 int /*<<< orphan*/  pool_pbufs ; 
 int /*<<< orphan*/  rom_pbufs ; 

u8_t FUNC4(struct pbuf *p)
{
	u8_t cnt;
	u32 level;
	struct pbuf *q;

	if(p==NULL) return 0;

	cnt = 0;

	FUNC0(level);
	while(p!=NULL) {
		p->ref--;
		if(p->ref==0) {
			q = p->next;
			if(p->flags==PBUF_FLAG_POOL) {
				FUNC2(&pool_pbufs,p);
			} else if(p->flags==PBUF_FLAG_ROM || p->flags==PBUF_FLAG_REF) {
				FUNC2(&rom_pbufs,p);
			} else {
				FUNC3(p);
			}
			cnt++;
			p = q;
		} else
			p = NULL;
	}
	FUNC1(level);

	return cnt;
}