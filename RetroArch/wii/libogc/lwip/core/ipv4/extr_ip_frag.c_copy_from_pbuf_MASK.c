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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u16_t ;
struct pbuf {int len; struct pbuf* next; int /*<<< orphan*/ * payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct pbuf *
FUNC1(struct pbuf *p, u16_t * offset,
           u8_t * buffer, u16_t len)
{
  u16_t l;

  p->payload = (u8_t *)p->payload + *offset;
  p->len -= *offset;
  while (len) {
    l = len < p->len ? len : p->len;
    FUNC0(buffer, p->payload, l);
    buffer += l;
    len -= l;
    if (len)
      p = p->next;
    else
      *offset = l;
  }
  return p;
}