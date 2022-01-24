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
struct netif {int /*<<< orphan*/  (* input ) (struct pbuf*,struct netif*) ;} ;

/* Variables and functions */
 struct pbuf* FUNC0 (struct netif*) ; 
 int /*<<< orphan*/  FUNC1 (struct pbuf*,struct netif*) ; 

__attribute__((used)) static void
FUNC2(void *nf)
{
  struct pbuf *p;
  struct netif *netif = (struct netif *)nf;

  while (1) {
    p = FUNC0(netif);
    netif->input(p, netif);
  }
}