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
struct pbuf {int dummy; } ;

/* Variables and functions */
 int DBG_FRESH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PBUF_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct pbuf*,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 

void
FUNC3(struct pbuf *h, struct pbuf *t)
{
  FUNC1(h, t);
  /* t is now referenced by h */
  FUNC2(t);
  FUNC0(PBUF_DEBUG | DBG_FRESH | 2, ("pbuf_chain: %p references %p\n", (void )h, (void *)t));
}