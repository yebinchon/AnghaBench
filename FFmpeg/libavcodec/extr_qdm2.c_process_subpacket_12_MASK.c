#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sub_sampling; } ;
struct TYPE_8__ {TYPE_1__* packet; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ QDM2SubPNode ;
typedef  TYPE_3__ QDM2Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(QDM2Context *q, QDM2SubPNode *node)
{
    GetBitContext gb;
    int length = 0;

    if (node) {
        length = node->packet->size * 8;
        FUNC1(&gb, node->packet->data, length);
    }

    FUNC2(q, &gb, length, 8, FUNC0(q->sub_sampling));
}