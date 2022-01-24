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
struct TYPE_3__ {int* palette; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MmContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(MmContext *s)
{
    int i;

    FUNC1(&s->gb, 4);
    for (i = 0; i < 128; i++) {
        s->palette[i] = 0xFFU << 24 | FUNC0(&s->gb);
        s->palette[i+128] = s->palette[i]<<2;
    }
}