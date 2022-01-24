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
struct uip_pbuf {scalar_t__ ref; scalar_t__ flags; struct uip_pbuf* next; } ;

/* Variables and functions */
 scalar_t__ UIP_PBUF_FLAG_POOL ; 
 scalar_t__ UIP_PBUF_FLAG_REF ; 
 scalar_t__ UIP_PBUF_FLAG_ROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct uip_pbuf*) ; 
 int /*<<< orphan*/  uip_pool_pbufs ; 
 int /*<<< orphan*/  uip_rom_pbufs ; 

u8_t FUNC2(struct uip_pbuf *p)
{
	u8_t cnt;
	struct uip_pbuf *q;

	if(p==NULL) return 0;

	cnt = 0;
	while(p!=NULL) {
		p->ref--;
		if(p->ref==0) {
			q = p->next;
			if(p->flags==UIP_PBUF_FLAG_POOL) {
				FUNC0(&uip_pool_pbufs,p);
			} else if(p->flags==UIP_PBUF_FLAG_ROM || p->flags==UIP_PBUF_FLAG_REF) {
				FUNC0(&uip_rom_pbufs,p);
			} else {
				FUNC1(p);
			}
			cnt++;
			p = q;
		} else
			p = NULL;
	}
	return cnt;
}