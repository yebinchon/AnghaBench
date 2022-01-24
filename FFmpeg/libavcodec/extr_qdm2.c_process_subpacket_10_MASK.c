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
struct TYPE_5__ {TYPE_1__* packet; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ QDM2SubPNode ;
typedef  int /*<<< orphan*/  QDM2Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(QDM2Context *q, QDM2SubPNode *node)
{
    GetBitContext gb;

    if (node) {
        FUNC1(&gb, node->packet->data, node->packet->size * 8);
        FUNC2(q, &gb);
        FUNC0(q, 1);
    } else {
        FUNC0(q, 0);
    }
}