#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nodes_confirmed; scalar_t__ nodes_delivered; int /*<<< orphan*/  body; scalar_t__ queue; } ;
typedef  TYPE_1__ job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(job *j) {
    if (j == NULL) return;
    if (j->queue) FUNC0(j->queue);
    FUNC2(j->body);
    if (j->nodes_delivered) FUNC1(j->nodes_delivered);
    if (j->nodes_confirmed) FUNC1(j->nodes_confirmed);
    FUNC3(j);
}