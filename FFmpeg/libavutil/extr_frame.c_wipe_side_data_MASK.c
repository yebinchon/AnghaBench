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
struct TYPE_3__ {int nb_side_data; int /*<<< orphan*/ * side_data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVFrame *frame)
{
    int i;

    for (i = 0; i < frame->nb_side_data; i++) {
        FUNC1(&frame->side_data[i]);
    }
    frame->nb_side_data = 0;

    FUNC0(&frame->side_data);
}