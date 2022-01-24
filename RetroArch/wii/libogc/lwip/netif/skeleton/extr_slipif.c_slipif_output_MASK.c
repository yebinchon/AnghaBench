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
typedef  int u8_t ;
struct pbuf {int len; scalar_t__ payload; struct pbuf* next; } ;
struct netif {int /*<<< orphan*/  state; } ;
struct ip_addr {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
#define  SLIP_END 129 
#define  SLIP_ESC 128 
 int SLIP_ESC_END ; 
 int SLIP_ESC_ESC ; 
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/ ) ; 

err_t
FUNC1(struct netif *netif, struct pbuf *p, struct ip_addr *ipaddr)
{
  struct pbuf *q;
  int i;
  u8_t c;

  /* Send pbuf out on the serial I/O device. */
  FUNC0(SLIP_END, netif->state);

  for(q = p; q != NULL; q = q->next) {
    for(i = 0; i < q->len; i++) {
      c = ((u8_t *)q->payload)[i];
      switch (c) {
      case SLIP_END:
  FUNC0(SLIP_ESC, netif->state);
  FUNC0(SLIP_ESC_END, netif->state);
  break;
      case SLIP_ESC:
  FUNC0(SLIP_ESC, netif->state);
  FUNC0(SLIP_ESC_ESC, netif->state);
  break;
      default:
  FUNC0(c, netif->state);
  break;
      }
    }
  }
  FUNC0(SLIP_END, netif->state);
  return 0;
}