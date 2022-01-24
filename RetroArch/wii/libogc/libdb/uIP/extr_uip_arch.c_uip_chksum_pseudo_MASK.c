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
typedef  scalar_t__ u32_t ;
typedef  scalar_t__ u16_t ;
struct uip_pbuf {scalar_t__ len; int /*<<< orphan*/  payload; struct uip_pbuf* next; } ;
struct uip_ip_addr {int addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

u16_t FUNC2(struct uip_pbuf *p,struct uip_ip_addr *src,struct uip_ip_addr *dst,u8_t proto,u16_t proto_len)
{
	u32_t acc,len,rem;
	struct uip_pbuf *q;

	acc = 0;

	rem = proto_len;
	for(q=p;q!=NULL && rem>0;q=q->next) {
		len = (rem>q->len)?q->len:rem;
		acc += FUNC1(q->payload,len);
		rem -= len;
	}

	acc += (src->addr&0xffffUL);
	acc += ((src->addr>>16)&0xffffUL);
	acc += (dst->addr&0xffffUL);
	acc += ((dst->addr>>16)&0xffffUL);
	acc += (u32_t)FUNC0(proto);
	acc += (u32_t)FUNC0(proto_len);

	while(acc>>16) acc = (acc&0xffffUL)+(acc>>16);

	return (u16_t)~(acc&0xffffUL);
}