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
struct TYPE_3__ {int len; int /*<<< orphan*/  data; int /*<<< orphan*/  tx_start; } ;
typedef  TYPE_1__ slave_rxdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SLAVE_TAG ; 

void FUNC2(slave_rxdata_t *t, bool print_rxdata)
{
    int rcv_len = (t->len+7)/8;
    FUNC0(SLAVE_TAG, "trans_len: %d", t->len);
    FUNC1("slave tx", t->tx_start, rcv_len);
    if (print_rxdata) FUNC1("slave rx", t->data, rcv_len);
}