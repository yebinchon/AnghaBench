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
typedef  int /*<<< orphan*/  QDM2SubPNode ;
typedef  int /*<<< orphan*/  QDM2Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(QDM2Context *q, QDM2SubPNode *list)
{
    QDM2SubPNode *nodes[4];

    nodes[0] = FUNC4(list, 9);
    if (nodes[0])
        FUNC3(q, nodes[0]);

    nodes[1] = FUNC4(list, 10);
    if (nodes[1])
        FUNC0(q, nodes[1]);
    else
        FUNC0(q, NULL);

    nodes[2] = FUNC4(list, 11);
    if (nodes[0] && nodes[1] && nodes[2])
        FUNC1(q, nodes[2]);
    else
        FUNC1(q, NULL);

    nodes[3] = FUNC4(list, 12);
    if (nodes[0] && nodes[1] && nodes[3])
        FUNC2(q, nodes[3]);
    else
        FUNC2(q, NULL);
}