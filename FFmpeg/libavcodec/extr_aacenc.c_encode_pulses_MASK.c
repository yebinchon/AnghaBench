#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pb; } ;
struct TYPE_5__ {int num_pulse; int start; int* pos; int* amp; } ;
typedef  TYPE_1__ Pulse ;
typedef  TYPE_2__ AACEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(AACEncContext *s, Pulse *pulse)
{
    int i;

    FUNC0(&s->pb, 1, !!pulse->num_pulse);
    if (!pulse->num_pulse)
        return;

    FUNC0(&s->pb, 2, pulse->num_pulse - 1);
    FUNC0(&s->pb, 6, pulse->start);
    for (i = 0; i < pulse->num_pulse; i++) {
        FUNC0(&s->pb, 5, pulse->pos[i]);
        FUNC0(&s->pb, 4, pulse->amp[i]);
    }
}