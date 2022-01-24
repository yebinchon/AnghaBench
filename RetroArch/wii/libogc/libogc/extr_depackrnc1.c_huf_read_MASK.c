#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num; TYPE_1__* table; } ;
typedef  TYPE_2__ huf_table ;
typedef  int /*<<< orphan*/  bit_stream ;
struct TYPE_4__ {int codelen; scalar_t__ code; unsigned long value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long,int,unsigned char**) ; 

__attribute__((used)) static unsigned long FUNC3 (huf_table *h, bit_stream *bs,
			       unsigned char **p) {
    int i;
    unsigned long val;

    for (i=0; i<h->num; i++) {
	unsigned long mask = (1 << h->table[i].codelen) - 1;
	if (FUNC1(bs, mask) == h->table[i].code)
	    break;
    }
    if (i == h->num)
	return -1;
    FUNC0 (bs, h->table[i].codelen, p);

    val = h->table[i].value;

    if (val >= 2) {
	val = 1 << (val-1);
	val |= FUNC2 (bs, val-1, h->table[i].value - 1, p);
    }
    return val;
}